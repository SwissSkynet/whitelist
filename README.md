<p align="center">
  <img width="550" src="https://raw.githubusercontent.com/SwissSkynet/whitelist/master/images/logo.png">
</p>
       
       
## Commonly white listed domains for Pi-Hole.     
          
A robust collection of commonly white listed websites borrowed from various sources including Pi-Hole subreddit, Pi-Hole forum, Pi-Hole github repository and more!
Add these domains to your Pi-Hole setup by running a script or manually and make your setup **trouble-free!**
                
Want to report a new domain? Want to report exsisting one? Feel free to file an <a href="https://github.com/SwissSkynet/whitelist/issues">issue</a>.
         
***
     
### Description      
       
***whitelist.txt***       
This file contain domains that are safe to whitelist i.e it does not contain any tracking or advertising sites. Adding this file fixes many start problems after Pi-Hole install like Blocklist downloads, Android Phones, Kaspersky Update, Microsoft Login and so on...
        
***
           
### Installation and Usage
         
***For whitelist.txt***     
```
git clone https://github.com/SwissSkynet/whitelist.git
cd whitelist/scripts
sudo chmod +x whitelist.sh
sudo ./whitelist.sh
```
**You can also setup a Cronjob for a weekly update (as example set to Friday at 0700 AM)**
```
sudo crontab -e
0 7 * * 5 sudo /root/whitelist/scripts/whitelist.sh
```
**Note: Be sure your Path is right. It can be different by used operating system**

### Uninstall (Delete only. Edit your whitelist after)
         
***For whitelist.txt***     
```
cd whitelist
sudo git reset --hard
sudo crontab -e       //Delete the Cronjob entry of you have set it.
```
             
**Note: You don't have to clone the repo every time you need to update whitelist file. Navigate to `whitelist/scripts` and run it again `sudo ./whitelist.sh`**
