FROM kalilinux/kali-rolling

MAINTAINER Guillaume REMY

RUN apt update
RUN pat install -y vim python2 python3 python3-pip man
RUN apt install -y nmap metasploit-framework iputils-ping set thc-ssl-dos scapy siege beef-xss dirbuster skipfish hydra john hashcat crunch hash-identifier chntpw
RUN pip3 install slowloris
RUN wget -O /opt/findmyhash.py https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/findmyhash/findmyhash_v1.1.2.py
