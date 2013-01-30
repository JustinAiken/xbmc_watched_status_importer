XBMC Watched status importer
============================

This is just a little script to import xbmc watched status .xml's made with the Eden watched status plugin into a mySQL database - this is necessary because Frodo doesn't work with the old script.

Requirements:
-------------   
1) Ruby (tested on 1.9)   
2) bundler   
3) a mySQL database (you may be able to put the sqlite gem and try that, but I haven't tested it)   
4) A watched.xml made with the plugin found at [http://code.google.com/p/xbmc-watched-data](http://code.google.com/p/xbmc-watched-data)

Preparation:  
------------
1) Setup the database.xml to point to your database   
2) Copy the watched.xml into the project folder   
   
Run:
---
```
git clone git://github.com/JustinAiken/xbmc_watched_status_importer.git   
cd xbmc_watched_status_importer   
bundle   
ruby watched.rb
```
