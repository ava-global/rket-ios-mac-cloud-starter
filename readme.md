# Mac mini CI/CD  setup guide

# 1) Remote Desktop

1.1) No Machine [link](https://www.nomachine.com/?q=download)

# 2) Setup ENV

- Install Xcode lasted version
- install Xcode iOS Simulator
- MacOS lasted version
- Xcode CLI command line

# 3) Install Bundle

- Homebrew
- Bundler
- Fastlane
- Cocoapods
- Carthage
- Swift Lint
- Swift Format
- Tmux
- Xcode Coverage

### **Shell script**

[https://github.com/ava-global/rket-ios-mac-cloud-starter/blob/main/starter.sh](https://github.com/ava-global/rket-ios-mac-cloud-starter/blob/main/starter.sh)

### **After finished install Bundle**

```jsx

==> Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/avantis/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh
```

# 4) Setup Github Runner

### 4.1) Register self host client

[https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners)

![new-runner-1](https://github.com/ava-global/rket-ios-mac-cloud-starter/blob/main/Resources/new-runner-1.png)

![new-runner-2](https://github.com/ava-global/rket-ios-mac-cloud-starter/blob/main/Resources/new-runner-2.png)

### Runner ready for job

![runner-running](https://github.com/ava-global/rket-ios-mac-cloud-starter/blob/main/Resources/runner-running.png)

# 5) Testing

![run-job-1](https://github.com/ava-global/rket-ios-mac-cloud-starter/blob/main/Resources/run-job-1.png)

![run-job-2](https://github.com/ava-global/rket-ios-mac-cloud-starter/blob/main/Resources/run-job-2.png)
