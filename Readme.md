# Welcome to my custom Kali-Linux docker image!

It is based on **[kali-rolling](https://hub.docker.com/r/kalilinux/kali-rolling)**, which is updated weekly.  
The source Dockerfile is available on GitHub : https://github.com/remyguillaume/docker-kali.

# Content
At the moment, this image contains the tools listed bellow, but the list grows as I practice :-)

### Common tools/packages
- Python (Version 2 and 3)
- OpenJDK 14
- Android SDK
- ApkTool
- NetCat
- Vim

### Scanning
- **[Nmap](https://nmap.org/)** --- *Network analysis tool*
- **Recon-ng** --- *Web Reconnaissance framework*
- **lbd** --- *Load balancer detector*
- **onesixtyone** --- *SNMP scanner*
- **p0f** --- *OS identification*
- **XProbe2** --- *OS identification*
- **nbtscan** --- *NetBIOS information scanner*

### Exploitation
- **[Metasploit](https://www.metasploit.com/)** --- *Framework for exploit development and vulnerability research*
- **Scapy** --- *Packet generator/sniffer and network scanner/discovery*
- **Siege** --- *regression testing and benchmarking*
- **thc-ssl-dos** --- *Stress tester for the SSL handshake*
- **SqlMap** --- automatic SQL injection tool 

### Social Engineering
- **SET** --- *the Social Engineering Toolkit*

### Vulnerability research
- Beef
- DirBuster
- SkipFish

### Passwords (Brute forcing, hash identification, ...)
- Hydra
- John The Ripper
- HashCat
- Chntpw
- Crunch
- Hash-Identifier
- findmyhash

### MITM
- Mitm-Proxy

### Antivirus evasion
- Veil-Evasion

# How to use
`docker run -ti remyguillaume/kali bash`

Enjoy! :)