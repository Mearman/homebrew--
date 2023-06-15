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

## Casks

- [Casks](#casks)
  - [FreeFileSync](#freefilesync)
    - [Installation](#installation)
    - [Updating FreeFileSync](#updating-freefilesync)
  - [GPT4All](#gpt4all)

### FreeFileSync

This repository is a [Homebrew](https://brew.sh) tap for the [FreeFileSync](https://www.freefilesync.org/) application. FreeFileSync is a folder comparison and synchronization software that optimizes file synchronization tasks and allows you to create and manage backup copies of your data.

#### Installation

To install FreeFileSync using this Homebrew tap, follow these steps:

1. Make sure you have [Homebrew](https://brew.sh) installed on your macOS system. If you don't have it yet, visit [https://brew.sh](https://brew.sh) and follow the installation instructions.

2. Tap this repository by running the following command:

```shell
brew tap Mearman/freefilesync
```

3. Install the FreeFileSync cask:

```shell
brew install --cask freefilesync
```

#### Updating FreeFileSync

To update FreeFileSync to the latest version, simply run:

```shell
brew update
brew upgrade --cask freefilesync
```

### GPT4All
