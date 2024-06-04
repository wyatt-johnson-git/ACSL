
# Secure Small Business Network Firewall

Our goal is to build a model small business network that offers better security than what most are using, at an affordable price point and with good usability. Then, make it available to the community so that better security is easily obtainable. This is largely done by leveraging open source projects and adding in what we think are appropriate missing bits.

The elements of the Secure Small Business Network that are accomplished by this portion are:


- Secure Core with modularity baked into the design
- Aligned with elements of the [NIST Cybersecurity Framework](https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.29.ipd.pdf) 
- PFSense based firewall, standardizing on Netgate hardware
- Preconfigured VLANs, etc.


# Firewall install doc. 

Step 1. Buy this [firewall](https://shop.netgate.com/products/4100-base-pfsense).

step 2. download this [config](https://github.com/wyatt-johnson-git/ACSL/tree/main/Secure%20Small%20Business%20Network/firewall/SBFirewallConfig4100.xml). 

Step 3. plug firewall power jack in and secure it. Plug other end into the UPS. 

step 4. connect computer to firewall on LAN using an ethernet port. (Wifi setup is a different [document](https://github.com/wyatt-johnson-git/ACSL/tree/main/Secure%20Small%20Business%20Network/firewall/WifiSetup.md).)

step 5. open firewall UI at the default location. [Link](https://192.168.1.1) 

step 6. sign into the firewall with default credentials of admin, pfsense

step 7. open the firewall backup and restore page from this [link](https://192.168.1.1/diag_backup.php)

step 8. Under restore, browse and select the configuration file downloaded from step 2. 

step 9. Restore the firewall.

Step 10. Wait a minute or two for the firewall to restore and reboot. 

step 11. Reconnect to the firewall at the new [link](https://192.168.1.1:180/system_usermanager.php?act=edit&userid=0)

step 12. Sign in with the default credentials of admin, pfsense.

Step 13. Go to the password change screen found at [link](https://192.168.1.1:180/system_usermanager.php?act=edit&userid=0)

step 14. Change the password to use a generated password from bitwarden.

## Acknowledgements

 - [PFsense](https://www.pfsense.org/) for their open source firewall.
 - [Lawerence Systems on Youtube](https://www.youtube.com/@LAWRENCESYSTEMS) For their guides on setting up pfsense. 
 - The list maintainers that help make DNS Blocklisting possible.



## Authors

- Andrew Karnes