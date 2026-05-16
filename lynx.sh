#!/bin/bash

echo "     /\\___/\\"
echo "    (  o   o )   LYNX"
echo "     )   ^   (   System Monitor"
echo "    /         \\"
echo "========================================="
echo "===       RAPORT STANU SYSTEMU       ===="
echo "========================================="
echo "Data wygenerowania: $(date)"
echo ""

echo "1. Czas dzialania systemu:"
uptime
echo ""

echo "2. Zuzycie pamieci RAM:"
free -m
echo ""

echo "3. Dostepne miejsce na dyskach:"
df -h
echo ""

echo "4. Aktywne procesy w systemie (top 5):"
ps -aux --sort=-%cpu | head -n 6
echo ""

echo "5. Ostatnie 5 zalogowanych uzytkownikow:"
last -n 5
echo ""

echo "========================================="
echo "Raport zostal pomyslnie wygenerowany"
