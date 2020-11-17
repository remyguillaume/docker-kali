FROM kalilinux/kali-rolling

LABEL maintainer="guillaume@paloo.fr"

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
        aircrack-ng \
        android-sdk \
        arping \
        beef-xss \
        bridge-utils \
        chntpw \
        crunch \
        cupp \
        cutycapt \
        dirb \
        dirbuster \
        dmitry \
        dnschef \
        dnsenum \
        dnsutils \
        dradis \
        driftnet \
        dsniff \
        ettercap-text-only \
        fping \
        google-android-build-tools-24-installer \
        hash-identifier \
        hashcat \
        hashid \
        hping3 \
        httrack \
        hydra \
        iputils-ping \
        john \
        kismet \
        lbd \
        libssl-dev \
        macchanger \
        man \
        metasploit-framework \
        miscfiles \
        mitmproxy \
        nbtscan \
        net-tools \
        netcat \
        nikto \
        nmap \
        onesixtyone \
        openjdk-14-jdk \
        p0f \
        patator \
        pciutils \
        python2 \
        python3 \
        python3-pip \
        reaver \
        recon-ng \
        scapy \
        set \
        siege \
        skipfish \
        sqlmap \
        sslscan \
        sslyze \
        tcptraceroute \
        thc-ssl-dos \ 
        theharvester \
        unicornscan \ 
        veil-evasion \
        vim \
        wamerican \
        wbritish \
        wcanadian \
        websploit \
        wfrench \
        whois \
        wifite \
        wogerman \
        wordlists \
        wswiss \
        xprobe2 \
        xsser \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O /opt/findmyhash.py https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/findmyhash/findmyhash_v1.1.2.py && \
    wget -O /usr/local/bin/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && \
    wget -O /usr/local/bin/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar && \
    wget  -O /opt/arachni.tar.gz https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz && \
    cd /opt && tar -xzvf arachni.tar.gz && \
    chmod +x /usr/local/bin/apktool*

RUN pip3 install slowloris

RUN export PATH=$(dirname "$(find /usr/lib/android-sdk/build-tools/ -name aapt)"):$PATH
