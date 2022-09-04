echo "Installing software, this might take a while.."

applications=['notion', 'balenaetcher', 'node', 'git', 'python3', 'pycharm professional', 'neofetch', 'sl', 'nano', 'htop', 'tree', 'ncdu','bitwarden', 'firefox', 'insomnia', 'spotify', 'curl', 'wget','cheat',
'fd', 'tldr', 'hashcat', 'ncdu', 'speedtest-cli', 'rectangle']
fonts=['font-inter', 'font-jetbrains-mono']

if [ uname = "Linux" ]; then
  sudo apt-get update && sudo apt-get upgrade -y
  for application in applications; do
    sudo apt install application -y
  done
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  for application in $applications; do
    sudo brew install application
  done

  npm install -g google-font-installer

  for font in $fonts; do
    brew install font --cask
  done
fi
