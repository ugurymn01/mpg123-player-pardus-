#!/bin/bash

secim=$(whiptail --title "MPG123 Player" \
--menu "Arayuz Seciniz:" 15 50 3 \
"1" "Terminal Arayuzu (TUI)" \
"2" "Grafik Arayuzu (GUI)" \
"3" "Cikis" \
3>&1 1>&2 2>&3)

case $? in
  1) exit ;;
esac

case $secim in
  1) bash tui/tui.sh ;;
  2) bash gui/gui.sh ;;
  *) exit ;;
esac
