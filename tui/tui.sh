#!/bin/bash

while true; do

secim=$(whiptail --title "MPG123 TUI Player" \
--menu "Bir secim yapiniz:" 15 60 3 \
"1" "MP3 Cal" \
"2" "Radyo Dinle" \
"3" "Cikis" \
3>&1 1>&2 2>&3)

[ $? -ne 0 ] && continue

case $secim in

1)
    mapfile -t mp3list < <(find "$HOME/İndirilenler" "$HOME/Müzik" -maxdepth 2 -type f -iname "*.mp3" 2>/dev/null)

    if [ ${#mp3list[@]} -eq 0 ]; then
        whiptail --msgbox "MP3 bulunamadi!\n$HOME/İndirilenler veya $HOME/Müzik icine .mp3 koy." 10 60
        continue
    fi

    menu_items=()
    i=1
    for f in "${mp3list[@]}"; do
        base=$(basename "$f")
        menu_items+=("$i" "$base")
        i=$((i+1))
    done

    sec=$(whiptail --title "MP3 Sec" \
    --menu "Calmak istedigin MP3:" 20 70 10 \
    "${menu_items[@]}" \
    3>&1 1>&2 2>&3)

    [ $? -ne 0 ] && continue
    
    idx=$((sec-1))
    mpg123 "${mp3list[$idx]}"
    ;;

# RADYO 
2)
    radyo=$(whiptail --title "Radyo Secimi" \
    --menu "Radyo seciniz:" 20 70 8 \
    "1" "Groove Salad (SomaFM)" \
    "2" "PopTron (SomaFM)" \
    "3" "Indie Pop (SomaFM)" \
    "4" "Secret Agent (SomaFM)" \
    "5" "Drone Zone (SomaFM)" \
    "6" "DEF CON Radio (SomaFM)" \
    "7" "Illinois Street Lounge (SomaFM)" \
    "8" "Geri Don" \
    3>&1 1>&2 2>&3)

    [ $? -ne 0 ] && continue
    [ "$radyo" = "8" ] && continue

    case $radyo in
        1) mpg123 http://ice1.somafm.com/groovesalad-128-mp3 ;;
        2) mpg123 http://ice1.somafm.com/poptron-128-mp3 ;;
        3) mpg123 http://ice1.somafm.com/indiepop-128-mp3 ;;
        4) mpg123 http://ice1.somafm.com/secretagent-128-mp3 ;;
        5) mpg123 http://ice1.somafm.com/dronezone-128-mp3 ;;
        6) mpg123 http://ice1.somafm.com/defcon-128-mp3 ;;
        7) mpg123 http://ice1.somafm.com/illstreet-128-mp3 ;;
    esac
    ;;

#CIKIS
3)
    exit
    ;;
esac

done
