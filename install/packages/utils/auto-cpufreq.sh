#!/bin/bash

yay -S --noconfirm --needed auto-cpufreq

systemctl enable --now auto-cpufreq
