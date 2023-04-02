iUSER_PATH=""
readonly USER_PATH
USER_PASSWORD = ""
readonly USER_PASSWORD
GIT_NAME = ""
readonly GIT_NAME = ""
GIT_EMAIL = ""
readonly GIT_EMAIL

git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/$USER_PATH/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER_PATH/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing languages"
brew install --cask flutter;
brew install clojure;
brew install cocoapods;

echo "Installing programming tools"
brew install lcov;
brew install --cask insomnia;
brew install zsh;
brew install docker;
brew install --cask iterm2;
brew install xcodegen;
brew install mint;
brew install maven;
brew install --cask dbeaver-community;

echo "Installing IDE and Editors"
brew install --cask visual-studio-code;
code --install-extension betterthantomorrow.calva --force
code --install-extension Dart-Code.dart-code      --force
code --install-extension Dart-Code.flutter        --force
code --install-extension alexisvt.flutter-snippets --force
code --install-extension Kasik96.swift            --force
code --install-extension ms-python.python         --force
brew install --cask obsidian;

echo "Installing softwares"
brew install --cask discord;
brew install --cask spotify;
brew install --cask anki;
brew install --cask notion;
brew install --cask zoom;
brew install --cask loom;
brew install --cask google-chrome;

echo "Installing setup tools"
brew install --cask karabiner-elements

echo "Auth required tools"
sudo brew install --cask sf-symbols;
