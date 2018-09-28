# DA Java - instalační skript pro macOS

## Popis
Skript (vyžaduje administrátorská práva), který stáhne potřebný software pro účast na digitální akademii JAVA (vytvořeno pro Ostravu).
Většina SW se stahuje z Dropboxu, takže časem bude skript neaktuální. Pro celý rok 2018 ovšem dostačující.

Stáhne se:
- MySQL Server 8.0.12
- MySQL Workbench 8.0.12 community
- Eclipse IDE
- JDK 1.8 full

## Instalace
1) stáhnout/vyklonovat repozitář
2) pustit bash skript ve složce, kde se mají stáhnout
3) nainstalovat balíčky MySQL Server, MySQL Workbench, Eclipse, JDK 1.8

## Spuštění
1) Spusťte terminal a změňte adresář na ten, kde chcete, aby byly instalační soubory.

2) Vyklonujte repozitář:

`git clone https://github.com/filipcima/czechitas-da-java-install-mac.git`

3) Změňte adresář na:

`cd czechitas-da-java-install-mac`

4) Pusťte skript:

`./install.sh`
