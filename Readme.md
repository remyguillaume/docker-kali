# Welcome to my custom Kali-Linux docker image!

It is based on **[kali-rolling](https://hub.docker.com/r/kalilinux/kali-rolling)**, which is updated weekly.  
The source Dockerfile is available on GitHub : https://github.com/remyguillaume/docker-kali.

# Content
At the moment, this image contains the tools listed bellow, but the list grows as I practice :-)

### Common tools/packages
- Python (Version 2 and 3)
- OpenJDK 14
- Android SDK
- NetCat
- Vim

### Scanning
- [Nmap](https://nmap.org/)
- Recon-ng
- lbd


### Exploitation
- [Metasploit](https://www.metasploit.com/)
- Scapy (DoS)
- Siege
- XProbe2

### Social Engineering
- Social Engineering Toolkit

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

### MITM
- Mitm-Proxy

### Antivirus evasion
- Veil-Evasion

# How to use
`docker run -ti remyguillaume/kali bash`

Enjoy! :)