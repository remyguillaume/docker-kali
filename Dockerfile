FROM kalilinux/kali-rolling

MAINTAINER Guillaume REMY

RUN apt update
RUN apt install -y nmap metasploit-framework iputils-ping set vim thc-ssl-dos scapy python3 python3-pip siege beef-xss dirbuster skipfish hydra john
RUN pip3 install slowloris


