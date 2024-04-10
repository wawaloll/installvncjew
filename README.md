# installvncjew
Install VNCJew (shodan images copy i guess) // https://github.com/jsteel2/vncjew <br>

# Install dependencies
If you are on ubuntu you can easily use snap install go. otherwise idk 
Now, we install the other dependencies: `sudo apt-get install -y git python3 python3-numpy websockify nmap masscan iptables libjpeg-dev libvncserver-dev`
# Code editing stuff
Yes, you need a braincell. Shocking right?
Anyways, `git clone https://github.com/jsteel2/vncjew`
Then, cd into vncjew/server
Run `wget https://github.com/wawaloll/installvncjew/raw/main/vncscreenshot && chmod +x ./vncscreenshot`, to avoid compilation insanity of the `vnc.c`
Go into `config.go` and edit the following lines
Replace `"admin": "whatever"` with your desired admin password, you can use it to run scans, stop them, refresh screenshots, and delete hosts (either if ur greedy or they are not working i guess)
Replace `"client": "whatever"` with your desired client password, The client is responsible for running masscan and so on.
Replace `var CFGIPInfoToken = "whatever"` with your IPInfo token, get it [here](https://ipinfo.io/).
(OPTIONAL) Replace `var CFGPasswords` with this:
`var CFGPasswords = []string{"123456", "password", "admin", "user", "default", "", "123456789", "111111", "password", "qwerty", "abc123", "12345678", "password1", "1234567", "123123", "pu", "god", "sex", "secret"}`
If you want to, you can keep the defaults, but make sure to add `,""` after all the passwords! You can also add your own
Now, go into the client folder,the main.go file, and edit these 2 lines:
```
var server = "***REMOVED***"
var password = "***REMOVED***"
```
Replace the server variable with your server IP(and add :8080), if you are running the client & the server on the same instance, replace the server variable to localhost:8080
Replace the password variable the the client password.

# If you are a bit lazy, and dont wanna do the part of this then run:
`sudo apt-get install -y git python3 python3-numpy websockify nmap masscan iptables libjpeg-dev libvncserver-dev && git clone https://github.com/jsteel2/vncjew && cd ./vncjew/server && wget https://github.com/wawaloll/installvncjew/raw/main/vncscreenshot && chmod +x ./vncscreenshot`
