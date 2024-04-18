
# Secure Small Business Network

Our goal is to build a model small business network that offers better security that what most are using, at an affordable price point and with good usability. Then, make it available to the community so that better security is easily obtainable. This is largely done by leveraging open source projects and adding in the missing bits.

The elements of the Secure Small Business Network that are accomplished by this portion are:


- Aligned with elements of the [NIST Cybersecurity Framework](https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.29.ipd.pdf) 
- Password Management via Bitwarden or Keypass

## Firefox Capabilities

With the install script that is setup for PopOS! it automaticaly opens firefox to some extensions that we think are incredibly useful and provide value through their use. These browser extensions are [UBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/), [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/), and [Firefox Multi Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/). Other extensions that might also be worthwhile depending on workflow are [Sideberry](https://addons.mozilla.org/en-US/firefox/addon/sidebery/) and [Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/).

### Why firefox in the first place?

The reason that we go with firefox is that it allows the user more freedom in how their data is processed and used. You have local profiles that can be changed, the data can be backed up and restored with relative ease. The extensions available are numerous like chrome but also has some that chromse doesn't like Multi Account Containers. Is a single extension enough to warrant a switch between browsers, for me, it is. 

### Firefox Multi Account Containers

This extension is my reason for using Firefox. Why? It's a way to have in a single browser separated areas for separate items. I can keep all my social media logins in a social media container such that they can't see into my finacial container and the services or institutions I use there. It allows separate logins simultaneously for the same site, which when logging in to social media from my personal or my business account, being able to immediately see based on a highlight color on the tab for me is incredibly useful. As a developer it also allows me to color code, dev, qa, and prod versions of the site so I know what password as well as what access I have somewhere immediately. Overall, being able to be logged in to the same site with different accounts makes this alone worthwhile for me. 

### UBlock Origin

Why this adblocker instead of any other adblocker? Well, adblock plus sold out and has "allowable ads" which means some of the ads get through. Are they the tracker ads, or the malware ads that it allows, what's the vetting process for an allowable ad and can that be bypassed with money. There's other adblockers like Privacy badger from the EFF which is likely great, however, any extension you install should be one you trust. UBlock Origin is open source so all code can be inspected as well as they've turned down donations so that it's less likely for them to be bribed by large donations from advertisers. They have added ad and popup lists like the [Web Annoyances Ultralist](https://github.com/yourduskquibbles/webannoyances) that while it can cause some websites to behave weirdly, for the most part improves the web by making it less intrusive. Same goes for UBlock origin, it may cause problems on some sites, which can be easily disabled on a per site basis, for the most part, makes web browsing better by removing the intrusive parts of it. 

### Bitwarden

It's a Password Manager. It's an open source on that has passed multiple audits of the code and has ongoing support. I find it easier to use than KeePass and it's variants because it's in browser so I don't have to leave for a different application. Yes it is cloud hosted (but is self hostable) which means that it's already covering your butt in the event of total data loss of a single location (Flood, hurricane, fire, lightning strike, tornado, etc). It also make using unique passwords per site easier and because it checks the specific site your on to display specific passwords, makes it easier to spot fake sites that are trying to credential harvest. Works well on mobile too so your passwords aren't just stuck on the specific computer. 

### Additional Extensions

Privacy badger from the Electronic Frontier Foundation which is a ad and tracking blocker that learns as it goes. Sideberry as a tab menu that makes it easy to group specific tabs into a single folder like thing so that tabs for a specific project or concern are visually separated as well.

## How to Use

Browse the web with Firefox. 

Anytime that bitwarden asks if you want to save your password with it, you should save your password, then reset the password and generate a new one with bitwarden to prevent password reuse. Only need to do the password reset on the first save of the password if it's not one already generated by Bitwarden.

When you want to open a tab for a financial or social media site, open the relevant account container or right click the tab and reopen it in the relevant account container. Then set that site to always open in the container you used by clicking the extension icon. 

Doing these things will significantly improve your security by separating financial and social media use while still keeping a single browser. By making sure your passwords are unique and hard to guess while making sure the site you're trying to use is the one for the saved password. 

## Acknowledgements

- Firefox for a browser that isn't a reskin of chrome
- UBlock Origin for an amazing tool
- Bitwarden for a password manager that has made my life easier
- Multi Account Containers by making it easier to separate concerns

## Authors

- Andrew Karnes