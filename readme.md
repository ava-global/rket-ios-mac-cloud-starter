# Mac mini CI/CD  setup guide



## Installation Guide 📦

### Prerequisite
- **Local**
    - No Machine: for remote desktop [Download Link](https://www.nomachine.com/?q=download)
- **Hosted**
    - Lasted MacOS

### Tools 🧰

#### Automate Run
- run this command `./starter.sh` and follow the instructions

#### Manual Run
- **Xcode**:
  - Install Xcode lasted version
  - install Xcode iOS Simulator
  - Xcode CLI command line
- **Other tools**:
  - Homebrew
  - Bundler
  - Fastlane
  - Cocoapods
  - Carthage
  - Swift Lint
  - Swift Format
  - Tmux
  - Xcode Coverage


### Setup Github Runner 🦑
- **Register self host client** [How to](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners)


## Setup Shortcut alias command (1st time) 😎

Add this line in `~/.zshrc`
```sh
alias start-gh-runner='tmux new-session -d -s gh-runner "~/actions-runner/run.sh; zsh" && tmux attach -t gh-runner'
```
## Our Commands
To start github runner
```sh
start-gh-runner
```