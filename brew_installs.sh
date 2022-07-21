#!/bin/zsh

# Usage Instructions
# ./brew_installs.sh
#   - run this script
#
# brew upgrade --cask
#   - upgrade existing casks

# TODO consider adding colors to my `echo` commands

echo 'First, updating & upgrading Homebrew...\n'
echo 'running: brew update\n'
brew update
echo 'running: brew outdated\n'
brew outdated
echo 'running: brew upgrade\n'
brew upgrade

# For a full list, see https://formulae.brew.sh/cask/
casks_to_install=(
    'alfred'
    'anki'
    'atom'
    'authy'
    'beardedspice' # https://beardedspice.github.io/
    'betterdiscord-installer'
    'contexts'
    'dropbox'
    'expressvpn'
    'firefox'
    'flux'
    'google-chrome'
    'google-drive'
    'iterm2'
    'kyokan-bob'
    'lastpass'
    'musescore'
    'rectangle'
    'rescuetime'
    'rocket'
    'spotify'
    'steam'
    'tor-browser'
    'transmission'
    'trezor-bridge'
    'trezor-suite'
    'visual-studio-code'
    'vlc'
)

# TODO figure out what to run to enumerate this list
packages_to_install=(
    'chruby' # from https://jekyllrb.com/docs/installation/macos/
    'emacs'
    'ffmpeg'
    'git'
    'gh'
    'htop'
    'imagemagick'
    'libusb'
    'mosh'
    'ruby-install' # from https://jekyllrb.com/docs/installation/macos/
    'source-highlight'
    'thefuck'
    'tmux'
    'tree'
    'wget'
    'zsh-syntax-highlighting'
)

echo '================================================================================'
echo '================================================================================'
echo 'Installing Homebrew casks...\n'
for cask in ${casks_to_install[@]}; do
    echo 'running: brew install --cask' $cask '\n'
    brew install --cask $cask
    echo '\ndone!\n'
done

# TODO document this
# note: still need to figure out how to download python & ruby
echo '================================================================================'
echo '================================================================================'
echo 'Installing Homebrew packages...\n'
for package in ${packages_to_install[@]}; do
    echo 'running: brew install' $package '\n'
    brew install $package
    # echo '..where the magic *would* happen..'
    echo '\ndone!\n'
done

echo '================================================================================'
echo '================================================================================'

echo 'TODO write out message indicating there might be post-install steps based on output above.'
