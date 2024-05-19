#!/bin/bash
OR='\e[38;5;202m'
GR='\e[32m'
NL='\e[0m'
WH='\e[97m'
BL='\e[34m'


echo -e "
${OR}  666666  66     66  66        66   666666        6        666          666      6        666      66  66666666       ${NL} 
${OR} 66       66     66  66        66  66     6     66  66     66  66    66  66    66 66      66  6    66     66               ${NL}
${WH}66        66 666 66  66        66  66    66    66    66    66     66     66   66    66    66   6   66     66        ${NL}
${WH}66        66 666 66  66        66  66 666     6666666666   66            66  6666666666   66    6  66     66         ${NL}  
${GR} 66       66     66   66      66   66    66   66       66  66            66  66       66  66     6 66     66       ${NL}
${GR}  666666  66     66    6666666     66     66 66         66 66            66 66         66 66       666 66666666 ${NL}
"
echo " https://github.com/churamanib > website > (github)
"
echo "  hello friend this is Churamani budhathoki ethical hacker (my nikname and public name (Amar))
"
# Check if Java JDK 19 is installed

if [[ $EUID -eq 0 ]]; then
    # Download Burp Suite Profesional Latet Version
    echo 'Downloading Burp Suite Professional v2022.8.2 ....'
    Link="https://portswigger-cdn.net/burp/releases/download?product=pro&version=2022.8.2&type=jar"
    wget "$Link" -O Burp_Suite_Pro.jar --quiet --show-progress
    sleep 2

    # execute Keygenerator
    echo 'Starting Keygenerator'
    (java -jar keygen.jar) &
    sleep 3s
    
    # Execute Burp Suite Professional with Keyloader
    echo 'Executing Burp Suite Professional with Keyloader'
    echo "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:$(pwd)/loader.jar -noverify -jar $(pwd)/Burp_Suite_Pro.jar &" > burp
    chmod +x burp
    cp burp /bin/burp 
    (./burp)
else
    echo "Execute Command as Root User"
    exit
fi

# Lets Download the latest Burp Suite Professional jar File
echo "`n`t 1. Please download latest Burp Suite Professional Jar file from :-:"
echo "`n`t https://portswigger.net/burp/releases/startdownload?product=pro&version=&type=Jar"
echo "`n`t 2. Replace the existing Burp-Suite-Pro.jar file with downloaded jar file. `n`t Keep previous file name"
