# vim: set ft=sh
#!/usr/bin/env bash

function set_env_vars() {
    export ETH_INTERFACE=$(ip link show | grep enp | sed 's/.*: \(.*\):.*/\1/')
    export WLAN_INTERFACE=$(ip link show | grep wl | sed 's/.*: \(.*\):.*/\1/' | head -1)
    export DEFAULT_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -1)
    # export HWMON_PATH=$(for i in /sys/class/hwmon/hwmon*/temp*_input; do echo "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*})) $(readlink -f $i)"; done | awk "END {print}" | cut -d " " -f 3)

    echo $ETH_INTERFACE
    echo $WLAN_INTERFACE
    echo $DEFAULT_INTERFACE
    # echo $HWMON_PATH
}

function stop() {
    if pgrep polybar; then
        killall -q polybar
    fi
}

function start() {
    set_env_vars
    for m in $(polybar --list-monitors | cut -d":" -f1); do
        MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini openboxBottom &
        MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini openboxTop &
    done
    # for m in $(polybar --list-monitors | cut -d":" -f1); do
    #     MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini openboxTop &
    #     MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini openboxBottom &
    # done
    # if type "xrandr"; then
    #     for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    #         MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini openboxBottom &
    #         MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini openboxTop &
    #     done
    # else
            # polybar --reload openboxTop &
            # polybar --reload openboxBottom &
    # fi
}

function toggle() {
    if pgrep polybar; then
        stop
    else
        start
    fi
}

case $1 in
start | restart)
    stop
    start
    ;;
stop) stop ;;
toggle) toggle ;;
*)
    echo "Say 'start', 'stop' or 'toggle' my sweetheart!"
    exit 2
    ;;
esac