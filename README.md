# Just a collection of my homebrew formulae and casks
<!-- ## Why is this repo named `homebrew--`? -->
<details>
<summary>
Why is this repo named `homebrew--`?
</summary>
I wanted to have the install process as simple as possible.
`brew` strips off the prepending `homebrew-` off new taps.
So having a repo with multiple formulae and casks, I would have to install them like this:
```bash
echo "DO NOT COPY PASTE THIS" ; exit 0
# git uri: https://github.com/username/homebrew-repo
brew tap username/repo
# or for a specific formula
brew install username/repo/formula
```
As you can see above the `homebrew-` part is missing. And the `repo` part is not really descriptive or helpful.

So I decided to name this repo `homebrew--` so that the install process is as simple as possible:
```bash
echo "DO NOT COPY PASTE THIS" ; exit 0
# git uri:
brew tap username/- # note the double dash
# or for a specific formula
brew install username/-/formula
```
</details>

## homebrew-tinytex
> source: https://github.com/yihui/homebrew-tinytex

The Homebrew formula for [TinyTeX](https://github.com/yihui/tinytex).

```sh
brew install Mearman/-/tinytex
```
