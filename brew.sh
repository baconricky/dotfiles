#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `brew.sh` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
# Upgrade any already-installed formulae.
brew update
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install moreutils findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash bash-completion

# Install `wget` with IRI support.
brew install wget --enable-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install bfg binutils binwalk cifer dex2jar dns2tcp fcrackzip foremost hashpump hydra john knock nmap pngcheck socat sqlmap tcpflow tcpreplay tcptrace ucspi-tcp install xpdf xz

# Install other useful binaries.
# brew install ack exiv2 lynx pigz pv rhino tree webkit2png zopfli
# brew install imagemagick --with-webp
brew install git p7zip rename
# brew install

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node
# brew install homebrew/versions/lua52

# Install native apps
# brew tap phinze/homebrew-cask
# brew install brew-cask

# brew cask install adium android-studio dropbox evernote google-hangouts hiss hyperdock istat-menus iterm2 logitech-unifying mplayer-osx-extended node node-webkit silverlight sourcetree sublime-text-3 textmate the-unarchiver transmission virtualbox vlc witch google-chrome eclipse-ide

# Remove outdated versions from the cellar.
brew install cleanup



