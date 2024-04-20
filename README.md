# installvncjew
Install VNCJew (shodan images copy i guess) // https://github.com/jsteel2/vncjew <br> diy edition!

# Install dependencies
If you are on ubuntu you can easily use snap install go. otherwise idk <br>
Now, we install the other dependencies: `sudo apt-get install -y git python3 python3-numpy websockify nmap masscan iptables libjpeg-dev libvncserver-dev`
# Code editing stuff
Yes, you need a braincell. Shocking right?<br>
Anyways, `git clone https://github.com/jsteel2/vncjew`<br>
Then, cd into vncjew/server<br>
Run `wget https://github.com/wawaloll/installvncjew/raw/main/vncscreenshot && chmod +x ./vncscreenshot`, to avoid compilation insanity of the `vnc.c`<br>
Go into `config.go` and edit the following lines<br>
Replace `"admin": "whatever"` with your desired admin password, you can use it to run scans, stop them, refresh screenshots, and delete hosts (either if ur greedy or they are not working i guess)<br>
Replace `"client": "whatever"` with your desired client password, The client is responsible for running masscan and so on.<br>
Replace `var CFGIPInfoToken = "whatever"` with your IPInfo token, get it [here](https://ipinfo.io/).<br>
(OPTIONAL) Replace `var CFGPasswords` with this:<br>
`var CFGPasswords = []string{"123456", "password", "admin", "user", "default", "", "123456789", "111111", "password", "qwerty", "abc123", "12345678", "password1", "1234567", "123123", "pu", "god", "sex", "secret"}`<br>
If you want to, you can keep the defaults, but make sure to add `,""` after all the passwords! You can also add your own<br>
Now, go into the client folder,the main.go file, and edit these 2 lines:<br>
```
var server = "***REMOVED***"
var password = "***REMOVED***"
```
Replace the server variable with your server IP(and add :8080), if you are running the client & the server on the same instance, replace the server variable to localhost:8080<br>
Replace the password variable the the client password.<br>

# Installing noVNC
Go into the vncjew/server directory, then run `git clone https://github.com/novnc/noVNC`, run `mv noVNC novnc` and you are done.
# Build and Run server and client
Remember, server is always first<br>
## On same machine
To build, go to the server directory and run go build, for client not needed. <br>
Use screen.<br>
`screen ./vncjew` in the server directory.<br>
`screen go run main.go` in the client directory.<br>
To detach, do ctrl+a+d<br>
## Not on same machine 
The build instructions are the same. <br>
Run `./vncjew` in the host machine in the server directory.<br>
Run `go run main go` in the client machine in the client directory.<br>

# Run/Stop scans
Go to `[ur ip]:8080/admin/start` to start the scan.<br>
Go to `[ur ip]:8080/admin/stop` to stop the scan.
# Troubleshooting
If you get this error in the client: `2024/04/10 01:35:03 websocket.Dial wss://localhost:8080/api/client: tls: first record does not look like a TLS handshake`, try changing these lines: <br>
`sec := "s"` to `sec := ""`<br>
and `Origin: &url.URL{Scheme: "https", Host: server}` to `Origin: &url.URL{Scheme: "http", Host: server}`<br>
# If you are a bit lazy, and dont wanna do the part of this then run:
`sudo apt-get install -y git python3 python3-numpy websockify nmap masscan iptables libjpeg-dev libvncserver-dev && git clone https://github.com/jsteel2/vncjew && cd ./vncjew/server && wget https://github.com/wawaloll/installvncjew/raw/main/vncscreenshot && chmod +x ./vncscreenshot`
