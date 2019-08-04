#!/bin/zsh

function get_clock() {
	$clock=date "+%H:%M"
}

function get_date() {
	$date=date "+%d/%m/%Y"
}

function get_volume() {
	vol="$(amixer get Master | tail -n 1 | awk '{print $6}')"

	if [ $vol = "[off]" ]
	then
		echo "[Mute]"
	else
		echo "$(amixer get Master | tail -n 1 | awk '{print $5}')"
	fi
}

while true
do

	xsetroot -name "$(get_volume) [$(get_date)] [$(get_clock)]"

done
