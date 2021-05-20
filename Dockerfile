FROM kalilinux/kali-rolling

LABEL maintainer="guillaume@paloo.fr"

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
        aircrack-ng \
        amap \
        android-sdk \
        arping \
        beef-xss \
        binwalk \
        bridge-utils \
        build-essential \
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
        fierce \
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
        joomscan \
        kismet \
        lbd \
        ldap-utils \
        libpcap-dev \
        libnet-snmp-perl \
        libssl-dev \
        macchanger \
        man \
        metasploit-framework \
        miscfiles \
        mitmproxy \
        nbtscan \
        net-tools \
        netcat \
        netdiscover \
        nikto \
        nmap \
        onesixtyone \
        openjdk-17-jdk \
        p0f \
        patator \
        pciutils \
        python2 \
        python3 \
        python3-pip \
        python3-venv \
        reaver \
        recon-ng \
        scapy \
        screen \
        set \
        siege \
        skipfish \
        sqlmap \
        sslscan \
        sslyze \
        tcptraceroute \
        thc-ipv6 \
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
        wpscan \
        wswiss \
        xprobe2 \
        xsser \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O /opt/findmyhash.py https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/findmyhash/findmyhash_v1.1.2.py && \
    wget -O /usr/local/bin/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && \
    wget -O /usr/local/bin/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar && \
    wget  -O /opt/arachni.tar.gz https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz && \
    cd /opt && tar -xzvf arachni.tar.gz && rm arachni.tar.gz && \ 
    wget  -O /tmp/tcprelay.tar.gz http://milletseb.free.fr/tcprelay/packages/tcprelay-1.3.2.tar.gz && \
    cd /tmp && tar -xzvf tcprelay.tar.gz && rm tcprelay.tar.gz && cd tcprelay-1.3.2 && ./configure && make && make install && \
    wget -O /tmp/get-pip.py https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
    cd /tmp && python2 get-pip.py && \
    wget -O /opt/volatility.zip https://downloads.volatilityfoundation.org/releases/2.6/volatility-2.6.zip && \
    cd /opt && unzip volatility.zip && rm volatility.zip && alias volatility='python2 volatility-master/vol.py' && \
    chmod +x /usr/local/bin/apktool*

RUN pip3 install slowloris peepdf-fork

# TODO : Automate this in build without prompting to autoconfiguration of PEM
# RUN cpan Crypt/DES.pm && cpan Crypt/OpenSSL/AES.pm

RUN export PATH=$(dirname "$(find /usr/lib/android-sdk/build-tools/ -name aapt)"):$PATH
