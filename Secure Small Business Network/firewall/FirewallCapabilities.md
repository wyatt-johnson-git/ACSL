
# Secure Small Business Network Firewall

Our goal is to build a model small business network that offers better security than what most are using, at an affordable price point and with good usability. Then, make it available to the community so that better security is easily obtainable. This is largely done by leveraging open source projects and adding in what we think are appropriate missing bits.

The elements of the Secure Small Business Network that are accomplished by this portion are:


- Secure Core with modularity baked into the design
- Aligned with elements of the [NIST Cybersecurity Framework](https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.29.ipd.pdf) 
- PFSense based firewall, standardizing on Netgate hardware
- Preconfigured VLANs, etc.


# Firewall Capabilities

Feature,Function,Technical Description,Test

- Block outside initiated traffic,Prevent people from connecting to devices on the network from outside of it,Deny rules on WAN so any traffic from WAN not initiated by a device already on the network is blocked,Scan all ports on wan interface

- Only allow certain connections out,Allow devices to only connect with services over allowed known ports,"Allow rules on LAN so any traffic from LAN can only talk on allowed ports (80,443, etc)",Try and connect over allowed ports

- Only allow certain connections to the firewall,Allow devices to talk to the firewall for important services,Allow Rules on LAN so any devices can access services like DNS and DHCP,Try and connect over allowed ports

- Hide pfsense admin interface,Change the ports used to connect to the pfsense admin interface,Changed pfsense ports and created allow rules on LAN to enable talking with the firewall,Try and connect over allowed ports

- PFBlockerNG installed and enabled,Provides block listing of known bad websites,Uses block lists to stop or prevent connections from LAN devices to any known bad actors,Try and connect to known blocked

- DNS override from WAN off,Prevent your ISP from telling you what sites you can connect to,,Check our DNS settings

- Maximum Table Entries increased,Holds a list of addresses from things like PFBlockerNG,"Upped value from 400k to 10mil, for use by the firewall to make blocking addresses faster",Visual inspect?

- Bogon update interval set to daily,Updates the list of bogus ip addresses to block connections from daily,,Visual inspect?

- Watchdogd enabled,Will attempt to automatically restart the firewall in the event of a hardware error,Watchdog timeout set for 128 seconds. ,Visual inspect?

- Default DNS servers changed,Use servers from cloudflare and google to find which domains to connect to,"Set default dns to local, 1.1.1.1, and 9.9.9.9",Visual inspect?

- Maximum States changed,Increased the number fo connections the firewall will allow at once,"Updated to 1,000,000 from default of 202,000",Visual inspect?

- Max Web GUI processes,How many different admin webguis can be active at once,Set value to 2`,Try to sign in to 3 webguis

- Disabled block everything rule,Prevent different LAN networks from talking to one another,Disabled due to only using one LAN,?

- Web ports alias,List of ports typically used for web browsing,"80, 443",Visual inspect?

- pfsense ports alias,List of ports to connect to the firewall,"180, 322",Visual inspect?

- service ports alias,list of ports to connect to services on the firewall,"53, 123, 547",Visual inspect?

- email ports alias,list of ports typically used by email services,"25, 465, 993, 995",Visual inspect?

- network admin ports alias,list of portstypically used for CLI interaction between devices,"21, 22",Visual inspect?

- unprivileged ports alias,list of ports that are not regulated and can do anything,1024 to 65535,Visual inspect?

- Web ports rule,Firewall rule to allow connections on LAN to talk to web servers,enabled,Connect to a web page like google

- pfsense ports rule,Firewall rule to allow connections on LAN to talk to the firewall,enabled,connect to the firewall admin page

- service ports rule,Firewall rule to allow connections on LAN to talk to services on the firewall,enabled,"send a DNS, NTP, and DHCP request"

- email ports rule,firewall rule to allow connections on LAN to talk to common email ports,disabled,Send an email (should fail)

- network admin ports rule,firewall rule to only allow LAN connections on these ports to LAN devices,disabled,Connect to a raspi or something over ssh (should fail)

- unprivileged ports rule,firewall rule to allow connections on LAN to talk to services on the unprivliged ports,disabled,Mumble or teamspeak I guess (should fail)

- Suricata,Installed but not enabled,Supposed to do IDS/IPS but not enabled,?

- PFBlockerNG,Filter and prevent request to know malicious sites,DNS Block Listing,Try and connect to known blocked

- PFBlockerNG added steven block list,Additional list of known malicious sites or addresses,"Added steven black Fake,gamb,pron, list to list of blocked",Try and connect to known blocked

- PFBlockerNG added OISD.nl lists,Additional list of known malicious sites or addresses,"Added OISD.nl big list to list of blocked",Try and connect to known blocked

- PFBlockerNG enabled TOR block list,Additional list of known TOR relays,Enabled default TOR block list,Try and connect to known blocked

- PFBlockerNG dedupe enabled,Simplifies the lists to block by removing repeat entries,,Visual inspect?

- PFBlockerNG Kill States enabled,"When block lists are updated, if there is a connection to a newly added blocked site, end the connection",,Visual inspect?

- Mutliple LAN networks,Separate internet traffic from guests and IOT devices from business traffic,Have an IOT Lan on OPT1 interface for the router,Connect to internet over opt1

- Block inter lan traffic rules,Firewall rules to block traffic between LANs,Floating rules blocking traffic from a list of interfaces to each lan,Attempt to connect to device on other LAN

- IOT Lan added to PFBlocker,All the above PFBlocker rules apply to IOT Lan as well,,Try and connect to known blocked

- IOT prevented from talking to IOT,If connections go through the firewall prevent IOT from talking to other devices on it,"Only works on different switches, client isolation on wifi router recommended. ",Try and connect to devices on IOT on different switches


## Acknowledgements

 - [PFsense](https://www.pfsense.org/) for their open source firewall.
 - [Lawerence Systems on Youtube](https://www.youtube.com/@LAWRENCESYSTEMS) For their guides on setting up pfsense. 
 - The list maintainers that help make DNS Blocklisting possible.


## Authors

- Andrew Karnes