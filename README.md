[![AUR](https://img.shields.io/aur/license/yaourt.svg?style=plastic)]() [![AUR](https://img.shields.io/badge/python-2.6%2C%202.7%2C%203.3%2C%203.4%2C%203.5%2C%203.6-blue.svg?style=plastic)]() [![Waffle.io](https://img.shields.io/waffle/label/evancohen/smart-mirror/in%20progress.svg)]()

This repo contains some useful bash scripts which are making my day-to-day life much easier :)
# Scripts #
## 1.copy 
                this script help you to copy your file content to clipboard
                        example: copy file_name.ext
                then simply ctrl+v
## 2.cvim 
                this script will create a new file with already some content
                        example first.cpp
                this will generate file like this
![Alt text](https://github.com/vishichoudhary/useful_bash_scripts/blob/master/docs/cvim.png?raw=true "Image to show cvim ")
## 3.search_me
                This script will search the given string 
                    1) If you didn't provide any path it will search in your current directory
                        example: search_me "Done copying" 
                    2) Else it will search in the given path
                        example: search_me "Done copying" ~/Programs/useful_bash_scripts
![Alt text](https://github.com/vishichoudhary/useful_bash_scripts/blob/master/docs/search_me_with_path.png?raw=true "Image to show search_me with path ")
![Alt text](https://github.com/vishichoudhary/useful_bash_scripts/blob/master/docs/search_me_without_path.png?raw=true "Image to search_me without path cvim ")

## 4.wan_ip
                This script will return your WAN ip 
                    example: sh wan_ip
## 5.ping_network
		This script will ping all ips in you network and 
		tell to you what them are responding.
		usage example: bash ping_network.sh
		after execute the script pass you network
		eg: 192.168.0.1
## 6. Pull all git repos inside a directory
This script will `cd` install all child directories and `git pull` them.
Best added to your **~/.bash_profile**
```bash
function pullall {
	for d in *; do
	echo $'\n'
	echo $d
	cd $d
	git checkout master
	git pull
	cd ..
	done
}
```
