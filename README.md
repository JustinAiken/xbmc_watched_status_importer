This is just a little script to import xbmc watched status .xml's made with the Eden watched status plugin into a mySQL database - this is necassary because Frodo doesn't work with the old script.

Requirements:
1) Ruby (tested on 1.9)
2) bundler
3) a mySQL database (you may be able to put the sqlite gem and try that, but I haven't tested it)

Usage:  
1) Setup the database.xml to point to your database
2) Copy the watched.xml into the project folder

```
bundle
ruby watched.rb
```
