if brew ls > /dev/null; then
  brew install wget
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install wget
fi

wget -O mysql-8.0.12-macos10.13-x86_64.dmg https://www.dropbox.com/s/7rvr7vwfo1plcmh/mysql-8.0.12-macos10.13-x86_64.dmg?dl=1
wget -O jdk-8u181-macosx-x64.dmg jdk-8u181-macosx-x64.dmg https://www.dropbox.com/s/vpzytohnwonzs1s/jdk-8u181-macosx-x64.dmg?dl=1
wget -O mysql-workbench-community-8.0.12-macos-x86_64.dmg https://www.dropbox.com/s/q6mo0otqz0f0jmk/mysql-workbench-community-8.0.12-macos-x86_64.dmg?dl=1
wget -O eclipse-inst-mac64.tar.gz https://www.dropbox.com/s/1lihg2jsk88x6b8/eclipse-inst-mac64.tar.gz?dl=1
# wget -O jdk1.8.0.tar.gz https://www.dropbox.com/s/5df0rowx9136acf/jdk1.8.0.tar.gz?dl=1

for filename in *.tar.gz
do
  tar -xf $filename
  printf "Soubor %s extrahovan!\n" "$filename"
  rm -f $filename
  printf "Archiv %s odstranen!\n" "$filename"
done
