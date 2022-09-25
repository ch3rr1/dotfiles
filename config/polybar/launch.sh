#!/bin/bash

killall -q polybar

echo "---" | tee -a /tmp/polybar.log
polybar main >> /tmp/polybar.log 2>&1 &

echo "Bar launched..."
