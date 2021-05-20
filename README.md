# raspberry-flex_stampelklocka
Script för installation av stämpelklocka (Flex) på Raspberry Pi.

## Installation
Starta upp Raspberryn och följ ordinarie installationanvisningar. Välj att installera Raspbian/Noobs vid eventuell fråga. Kom ihåg att koppla upp enheten trådlöst mot ett öppet WiFi samt att ta bort lösenordet för användaren. Vid fråga om uppdatering, välj nej.

### Ladda ned script
Börja med att ladda ned scriptet genom att klistra in nedanstående i en terminal
```sh
cd; curl -o kiosk.sh -L https://raw.githubusercontent.com/VamasAB/raspberry-flex_stampelklocka/master/kiosk.sh
```

### Kör script
Kör det nedladdade scriptet genom att klistra in nedanstående i en terminal

```sh
cd;chmod +x kiosk.sh;./kiosk.sh;
```
