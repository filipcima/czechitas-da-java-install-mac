if brew ls > /dev/null; then
  brew install wget
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install wget
fi

links=(
  "https://www.dropbox.com/s/7rvr7vwfo1plcmh/mysql-8.0.12-macos10.13-x86_64.dmg?dl=1"
  "https://www.dropbox.com/s/vpzytohnwonzs1s/jdk-8u181-macosx-x64.dmg?dl=1"
  "https://www.dropbox.com/s/q6mo0otqz0f0jmk/mysql-workbench-community-8.0.12-macos-x86_64.dmg?dl=1"
  "https://www.dropbox.com/s/1lihg2jsk88x6b8/eclipse-inst-mac64.tar.gz?dl=1"
  # "https://www.dropbox.com/s/5df0rowx9136acf/jdk1.8.0.tar.gz?dl=1"
)
for link in "${links[@]}"
do
  wget -O $(echo $link | sed -e "s/?dl=1$//" -e 's/.*\///') $link
done

for filename in *.tar.gz
do
  tar -xf $filename
  printf "Soubor %s extrahovan!\n" "$filename"
  rm -f $filename
  printf "Archiv %s odstranen!\n" "$filename"
done
