# Welcome to my custom Kali-Linux docker image!

It is based on **[Kali-Rolling](https://hub.docker.com/r/kalilinux/kali-rolling)**, which is updated weekly.
The source Dockerfile is available on GitHub : https://github.com/remyguillaume/docker-kali.

# Content
At the moment, this image contains the tools listed below, but the list grows as I practice :-)

### Common tools/packages
- Android SDK
- ApkTool
- LDAP-Utils
- NetCat
- OpenJDK 17
- PCI-Utils
- Perl
- Python (Version 2 and 3)
- Screen
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
- **Nikto** --- *Web server security scanner*
- **SslScan** --- *Fast SSL scanner*
- **Sslyze** --- *Fast and full-featured SSL scanner*
- **Arachni** --- *Web Application Security Scanner Framework*
- **Wpscan** --- *WordPress vulnerability scanner*
- **Joomscan** --- *Joomla Vulnerability Scanner*

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
- **Websploit** --- *Web exploitation framework*

### Footprinting
- **SET** --- *The Social Engineering Toolkit*
- **WhoIS** --- *WHOIS client*
- **DnsUtils** --- *DNS Utilities*
- **DnsEnum** --- *Enumerate domain DNS information*
- **Dmitry** --- *Deepmagic Information Gathering Tool*
- **Fierce** --- *Domain DNS scanner*
- **TcpTraceroute** --- *Traceroute implementation using TCP packets*
- **TheHarvester** --- *Gather e-mail accounts and subdomain names from public sources*

### Vulnerability research
- **BeEF** --- *Browser Exploitation Framework*
- **DirBuster** --- *Web server directory brute-forcer*
- **SkipFish** --- *Web application security reconnaissance tool*
- **DirB** --- *URL bruteforcing tool*

### Passwords (Brute forcing, hash identification, ...)
- **Hydra** --- *Network logon cracker*
- **John The Ripper** --- *Password cracking tool*
- **HashCat** --- *Password recovery utility*
- **Chntpw** --- *NT SAM password recovery utility*
- **Crunch** --- *Tool for creating wordlist*
- **Hash-Identifier** --- *Tool to identify hash types*
- **findmyhash** --- *Python script to search for online hash*
- **Patator** --- *Multi-purpose brute-forcer*
- **HashId** --- *Identify the different types of hashes used to encrypt data*

### Wordlists
- **Wordlists** -- *Rockyou wordlist*
- **MicFiles** --- *Dictionaries and other interesting files*
- **Cupp** --- *Generate dictionaries from personal data*
- **Wswiss** --- *Swiss (German) wordlist*
- **Wfrench** --- *French wordlists*
- **Wogerman** --- *German wordlists*
- **Wamerican** --- *American wordlists*
- **Wbritish** --- *British English wordlists*
- **Wcanadian** --- *Canadian English wordlists*

### WiFi
- **AirCrack-ng** --- *Wireless WEP/WPA cracking utilities*
- **Kismet** --- *Wireless network and device detector*
- **MacChanger** --- *Manipulate the MAC address of network interfaces*
- **Wifite** --- *Automate wireless auditing using aircrack-ng tools*
- **Reaver** --- *Brute force attack tool against Wifi WPS Authentication*
- **Bridge-Utils** --- *Utilities for configuring the Linux Ethernet bridge*

### Antivirus evasion
- **Veil-Evasion** --- *Bypass anti-virus detection*

### Reporting
- **CutyCapt** --- *Capture WebKit's rendering of a web page*
- **Dradis** --- *Reporting and collaboration tools*

### Misc
- **Httrack** --- *Copy websites to your computer*
- **BinWalk** --- *Analyze binary blobs and executable code*

# How to use

**Minimalistic:**

`docker run -ti remyguillaume/kali bash`

**To be able to use Wifi interface in docker (ie. for aircrack tools):**

`docker run -ti --net="host" --privileged remyguillaume/kali bash`


Enjoy! :)