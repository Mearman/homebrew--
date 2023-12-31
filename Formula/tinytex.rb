class Tinytex < Formula
  desc "Tiny and easy-to-maintain LaTeX distribution based on TeX Live"
  homepage "https://yihui.org/tinytex/"
  url "https://github.com/rstudio/tinytex-releases/releases/download/v2023.06/TinyTeX-1-v2023.06.tar.gz"
  sha256 "f9d94f4787b5d6814409257d30665c1c9c72318c45051d5569f11563221f3c64"
  license "GPL-2.0-or-later"
  head "https://yihui.org/tinytex/TinyTeX-1.tgz"

  def install
    system "cd bin && ln -s */* ./"
    prefix.install Dir["*"]
  end

  def post_install
    # symlink bin/*/* to bin again (may need this after `tlmgr install`)
    cd bin.to_s do
      system "find . -type l -depth 1 -delete && ln -s */* ./"
    end
  end

  test do
    system "#{bin}/pdflatex", "--version"
    system "#{bin}/xelatex",  "--version"
    system "#{bin}/lualatex", "--version"

    (testpath/"test.tex").write <<~EOS
      \\nonstopmode
      \\documentclass{article}
      \\usepackage{graphics}
      \\title{Hello World}
      \\author{John Doe}
      \\begin{document}
      \\maketitle
      This is a \\emph{test} document.

      A simple math expression: $$S_n=\\sum X_{i=1}^n$$
      \\end{document}
    EOS

    system "#{bin}/pdflatex", "test.tex"
    assert_predicate testpath/"test.pdf", :exist?, "Failed to compile to PDF via pdflatex"
    rm "test.pdf"

    system "#{bin}/xelatex",  "test.tex"
    assert_predicate testpath/"test.pdf", :exist?, "Failed to compile to PDF via xelatex"
    rm "test.pdf"

    system "#{bin}/lualatex", "test.tex"
    assert_predicate testpath/"test.pdf", :exist?, "Failed to compile to PDF via lualatex"
    rm "test.pdf"
  end
end
