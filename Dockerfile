FROM kalilinux/kali-rolling

LABEL maintainer="guillaume@paloo.fr"

RUN apt update && apt upgrade -y
RUN apt install -y vim python2 python3 python3-pip man net-tools netcat
RUN apt install -y nmap metasploit-framework iputils-ping set thc-ssl-dos scapy siege beef-xss dirbuster skipfish hydra john hashcat crunch hash-identifier 
RUN apt install -y chntpw mitmproxy recon-ng lbd xprobe2 veil-evasion 
RUN apt install -y openjdk-14-jdk apktool android-sdk google-android-build-tools-24-installer
RUN pip3 install slowloris
RUN export PATH=/usr/lib/android-sdk/build-tools/24.0.2/:$PATH
RUN wget -O /opt/findmyhash.py https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/findmyhash/findmyhash_v1.1.2.py
