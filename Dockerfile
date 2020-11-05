FROM kalilinux/kali-rolling

LABEL maintainer="guillaume@paloo.fr"

RUN apt update && apt install -y \
        android-sdk \
        arping \
        beef-xss \
        chntpw \
        crunch \
        dirbuster \
        dmitry \
        dnschef \
        dnsenum \
        dnsutils \
        driftnet \
        dsniff \
        ettercap-text-only \
        fping \
        hash-identifier \
        hashcat \
        hping3 \
        hydra \
        iputils-ping \
        john \
        lbd \
        man \
        metasploit-framework \
        mitmproxy \
        nbtscan \
        net-tools \
        netcat \
        nmap \
        onesixtyone \
        openjdk-14-jdk \
        p0f \
        python2 \
        python3 \
        python3-pip \
        recon-ng \
        scapy \
        set \
        siege \
        skipfish \
        sqlmap \
        tcptraceroute \
        thc-ssl-dos \ 
        theharvester \
        unicornscan \ 
        veil-evasion \
        vim \
        whois \
        xprobe2 \
        xsser \
    && rm -rf /var/lib/apt/lists/*

RUN DEBIAN_FRONTEND=noninteractive apt install -y google-android-build-tools-24-installer && \
    export PATH=/usr/lib/android-sdk/build-tools/24.0.2/:$PATH

RUN wget -O /opt/findmyhash.py https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/findmyhash/findmyhash_v1.1.2.py && \
    wget -O /usr/local/bin/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && \
    wget -O /usr/local/bin/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar && \
    chmod +x /usr/local/bin/apktool*

RUN pip3 install slowloris
