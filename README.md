# searx randomizer lua script for lighttpd
put script in /etc/lighttpd or wherever you want 
and then append 
```
$HTTP["url"] =~ "^/search" {
        magnet.attract-physical-path-to = ("/etc/lighttpd/searx.lua")
}
```
to lighttpd.conf
you can then add http://<host>?q=%s as a search engine in your browser 
