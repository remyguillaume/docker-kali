# Welcome to my custom Kali-Linux docker image!

It is based on **[Kali-Rolling](https://hub.docker.com/r/kalilinux/kali-rolling)**, which is updated weekly.
The source Dockerfile is available on GitHub : https://github.com/remyguillaume/docker-kali.

# Content
At the moment, this image contains the tools listed below, but the list grows as I practice :-)

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
- **ArPing** --- *Sends IP and/or ARP pings*
- **fPing** --- *Sends ICMP ECHO_REQUEST packets*
- **hPing3** --- *Active Network Smashing Tool*
- **UnicornScan** --- *Userland distributed TCP/IP stack*
- **Driftnet** --- *Picks out and displays images from network traffic*

### Exploitation
- **[Metasploit](https://www.metasploit.com/)** --- *Framework for exploit development and vulnerability research*
- **Scapy** --- *Packet generator/sniffer and network scanner/discovery*
- **Siege** --- *Regression testing and benchmarking*
- **thc-ssl-dos** --- *Stress tester for the SSL handshake*
- **SqlMap** --- *Automatic SQL injection tool*
- **XSSer** --- *XSS testing framework*
- **Mitm-Proxy** --- *Man-in-the-middle HTTP proxy*
- **Ettercap** --- *Multipurpose sniffer/interceptor/logger for switched LAN*
- **DNSChef** --- *DNS proxy for penetration testers*
- **dSniff** --- *Various tools to sniff network traffic for cleartext insecurities* [urlsnarf, arpspoof]

### Footprinting
- **SET** --- *The Social Engineering Toolkit*
- **WhoIS** --- *WHOIS client*
- **DnsUtils** --- *DNS Utilities*
- **DnsEnum** --- *Enumerate domain DNS information*
- **Dmitry** --- *Deepmagic Information Gathering Tool*
- **TcpTraceroute** --- *Traceroute implementation using TCP packets*
- **TheHarvester** --- *Gather e-mail accounts and subdomain names from public sources*

### Vulnerability research
- **BeEF** --- *Browser Exploitation Framework*
- **DirBuster** --- *Web server directory brute-forcer*
- **SkipFish** --- *Web application security reconnaissance tool*

### Passwords (Brute forcing, hash identification, ...)
- **Hydra** --- *Network logon cracker*
- **John The Ripper** --- *Password cracking tool*
- **HashCat** --- *Password recovery utility*
- **Chntpw** --- *NT SAM password recovery utility*
- **Crunch** --- *Tool for creating wordlist*
- **Hash-Identifier** --- *Tool to identify hash types*
- **findmyhash** --- *Python script to search for online hash*

### Antivirus evasion
- **Veil-Evasion** --- *Bypass anti-virus detection*

# How to use
`docker run -ti remyguillaume/kali bash`

Enjoy! :)