#!/bin/bash

echo -e "\033[1;32m[+] Installing bug bounty tools, please wait...\033[0m"
sleep 1

TOOLS=(
  github.com/projectdiscovery/subfinder/v2/cmd/subfinder
  github.com/OWASP/Amass/v4/...
  github.com/ffuf/ffuf
  github.com/projectdiscovery/httpx/cmd/httpx
  github.com/projectdiscovery/dnsx/cmd/dnsx
  github.com/projectdiscovery/naabu/v2/cmd/naabu
  github.com/projectdiscovery/nuclei/v3/cmd/nuclei
  github.com/projectdiscovery/katana/cmd/katana
  github.com/projectdiscovery/shuffledns/cmd/shuffledns
  github.com/projectdiscovery/interactsh/cmd/interactsh-client
  github.com/projectdiscovery/uncover/cmd/uncover
  github.com/projectdiscovery/cmdx/cmd/cmdx
  github.com/projectdiscovery/chaos-client/cmd/chaos
  github.com/projectdiscovery/mapcidr/cmd/mapcidr
  github.com/projectdiscovery/resolver/cmd/resolver
  github.com/projectdiscovery/notify/cmd/notify
  github.com/tomnomnom/assetfinder
  github.com/tomnomnom/waybackurls
  github.com/tomnomnom/gf
  github.com/tomnomnom/qsreplace
  github.com/tomnomnom/anew
  github.com/tomnomnom/unfurl
  github.com/tomnomnom/meg
  github.com/tomnomnom/httprobe
  github.com/tomnomnom/fff
  github.com/tomnomnom/comb
  github.com/tomnomnom/gron
  github.com/hakluke/hakrawler
  github.com/hakluke/hakcheckurl
  github.com/hakluke/hakrevdns
  github.com/lc/gau/v2/cmd/gau
  github.com/dwisiswant0/crlfuzz/cmd/crlfuzz
  github.com/dwisiswant0/trufflehog
  github.com/1ndianl33t/Gf-Patterns
  github.com/BishopFox/smog
  github.com/xnl-h4ck3r/pingbypass
  github.com/glebarez/cero
  github.com/hahwul/gitls
  github.com/gwen001/github-search
  github.com/projectdiscovery/jaeles
  github.com/projectdiscovery/cariddi
  github.com/devanshbatham/ParamSpider
  github.com/edoardottt/cariddi
  github.com/0x727/GHTTPScan
  github.com/Detectify/pathtraverser
  github.com/mrTuxx/ssrf-sheriff
  github.com/ehsahil/ssrfdetect
  github.com/defparam/smuggler
  github.com/ryan108/zgrab2
  github.com/d3mondev/puredns/v2
  github.com/eth0izzle/shhgit
  github.com/root4loot/rescope
  github.com/stbenjam/httpdirfuzz
  github.com/jaeles-project/gospider
  github.com/Emoe/kxss
  github.com/KathanP19/Gxss
  github.com/projectdiscovery/sigurlfind3r/cmd/sigurlfind3r
  github.com/ozguralp/gmapsapiscanner
  github.com/sensepost/gowitness
  github.com/projectdiscovery/simplehttpserver/cmd/simplehttpserver
)

for tool in "${TOOLS[@]}"; do
  echo -e "\033[1;34m[+] Installing:\033[0m $tool"
  go install "$tool@latest" 2>/dev/null
done

INSTALL_PATH="$(go env GOPATH)/bin"

echo -e "\n\033[1;32m[✔] All bug bounty tools have been installed successfully.\033[0m"
echo -e "\033[1;33m[→] Tools are installed in: \033[1;36m$INSTALL_PATH\033[0m"
echo -e "\033[1;34m[!] Add to your PATH if not already:\033[0m"
echo -e "    \033[1;32mexport PATH=\$PATH:$INSTALL_PATH\033[0m"
