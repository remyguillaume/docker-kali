FROM kalilinux/kali-rolling

LABEL maintainer="guillaume@paloo.fr"

RUN apt update && apt upgrade -y
RUN apt install -y vim python2 python3 python3-pip man net-tools netcat whois
RUN apt install -y nmap metasploit-framework iputils-ping set thc-ssl-dos scapy siege beef-xss dirbuster skipfish hydra john hashcat crunch hash-identifier onesixtyone p0f nbtscan
RUN apt install -y chntpw mitmproxy recon-ng lbd xprobe2 veil-evasion sqlmap
RUN apt install -y openjdk-14-jdk android-sdk
RUN DEBIAN_FRONTEND=noninteractive apt install -y google-android-build-tools-24-installer
RUN apt install -y arping fping hping3 unicornscan driftnet xsser ettercap-text-only dsniff dnschef whois dnsutils dnsenum dmitry tcptraceroute theharvester

RUN pip3 install slowloris
RUN export PATH=/usr/lib/android-sdk/build-tools/24.0.2/:$PATH

RUN wget -O /opt/findmyhash.py https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/findmyhash/findmyhash_v1.1.2.py

RUN wget -O /usr/local/bin/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
RUN wget -O /usr/local/bin/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar
RUN chmod +x /usr/local/bin/apktool*
