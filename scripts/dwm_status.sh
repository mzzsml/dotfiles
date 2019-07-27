#!/bin/zsh

function clock() {
	$clock=date "+%H:%M"
}

function date() {
	$date=date "+%d/%m/%Y"
}

xsetroot -name "[$(date)] [$(clock)]"
