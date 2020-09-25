FROM kalilinux/kali-rolling

MAINTAINER Guillaume REMY

RUN apt update
RUN apt install -y nmap metasploit-framework


