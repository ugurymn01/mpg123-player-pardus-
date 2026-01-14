#!/bin/bash

while true; do

yad --title="MPG123 GUI Player" \
--width=320 \
--button="MP3 Cal:1" \
--button="Radyo Dinle:2" \
--button="Cikis:3"

secim=$?

case $secim in

1)
    dosya=$(yad --file --title="MP3 Dosyasi Sec" --file-filter="MP3 dosyalari | *.mp3")
    [ "$dosya" != "" ] && mpg123 "$dosya"
    ;;

2)
    url=$(yad --list \
    --title="Radyo Secimi" \
    --column="Radyo" --column="URL" \
    --hide-column=2 \
    --print-column=2 \
    --separator="" \
    --height=280 \
    "Groove Salad (SomaFM)" "http://ice4.somafm.com/groovesalad-128-mp3" \
    "PopTron (SomaFM)" "http://ice4.somafm.com/poptron-128-mp3" \
    "Indie Pop (SomaFM)" "http://ice4.somafm.com/indiepop-128-mp3" \
    "Secret Agent (SomaFM)" "http://ice4.somafm.com/secretagent-128-mp3" \
    "Drone Zone (SomaFM)" "http://ice4.somafm.com/dronezone-128-mp3" \
    "DEF CON Radio (SomaFM)" "http://ice4.somafm.com/defcon-128-mp3" \
    "Illinois Street Lounge (SomaFM)" "http://ice4.somafm.com/illstreet-128-mp3")

    # İptal/boş seçime geri dön
    [ -z "$url" ] && continue

    # DEBUG: GUI'nin aldığı URL'yi göster
    yad --info --title="Debug" --text="Calinacak URL:\n$url"

    mpg123 "$url"
    ;;

3)
    exit
    ;;
*)
    exit
    ;;
esac

done
