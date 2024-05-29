# Mac mini CI/CD  setup guide

# 1) Remote Desktop

1.1) No Machine

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
    
    ```jsx
    brew install tmux
    ```
    
- Xcode Coverage
    
    ```bash
    brew install twittemb/formulae/Xcodecoverageconverter
    ```
    

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

![Screenshot 2567-05-29 at 13.59.57.png](Mac%20mini%20CI%20CD%20setup%20guide%206a2f1100106b4f1e91c3433f3d9bcf00/Screenshot_2567-05-29_at_13.59.57.png)

![Screenshot 2567-05-29 at 14.00.10.png](Mac%20mini%20CI%20CD%20setup%20guide%206a2f1100106b4f1e91c3433f3d9bcf00/Screenshot_2567-05-29_at_14.00.10.png)

### Runner ready for job

![Screenshot 2567-05-29 at 14.02.53.png](Mac%20mini%20CI%20CD%20setup%20guide%206a2f1100106b4f1e91c3433f3d9bcf00/Screenshot_2567-05-29_at_14.02.53.png)

# 5) Testing

![Screenshot 2567-05-29 at 14.10.46.png](Mac%20mini%20CI%20CD%20setup%20guide%206a2f1100106b4f1e91c3433f3d9bcf00/Screenshot_2567-05-29_at_14.10.46.png)

![Screenshot 2567-05-29 at 14.10.53.png](Mac%20mini%20CI%20CD%20setup%20guide%206a2f1100106b4f1e91c3433f3d9bcf00/Screenshot_2567-05-29_at_14.10.53.png)
