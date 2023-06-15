<h1>Just a collection of my homebrew formulae and casks</h1>


- [Why is this repo named \`homebrew--](#why-is-this-repo-named-homebrew--)
- [Installation](#installation)
	- [Tap this repository](#tap-this-repository)
- [Formulae](#formulae)
	- [TinyTeX.](#tinytex)
- [Casks](#casks)
	- [FreeFileSync](#freefilesync)
	- [GPT4All](#gpt4all)

##  Why is this repo named `homebrew-- 
<details><summary></summary>

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

## Installation
This repository is for [Homebrew](https://brew.sh). To install Homebrew, run this command in your terminal:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### Tap this repository
```sh
brew tap Mearman/-
```

## Formulae
### [TinyTeX](https://github.com/yihui/tinytex).
> source: https://github.com/yihui/homebrew-tinytex
```sh
brew install Mearman/-/tinytex
```

## Casks


### [FreeFileSync](https://www.freefilesync.org/)



```shell
brew installMearman/-/freefilesync
```


### [GPT4All](https://github.com/nomic-ai/gpt4all/tree/main/gpt4all-chat)

```sh
brew install Mearman/-/gpt4all
```