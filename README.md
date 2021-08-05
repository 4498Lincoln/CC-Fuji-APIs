# CC-Fuji-APIs
APIs I made for my personal use in computercraft. This repository was simply made to organize these.

In order to load an API in computercraft, use [os.loadAPI()](https://computercraft.info/wiki/Os.loadAPI) with a string containing the path to your API as an argument. For example, if an API file is called "coolutils.lua" and it is in the directory "/myAPIs," to load it, you would run the following line of code:

```
os.loadAPI("/myAPIs/coolutils.lua")

-- ... Or if it is in the root directory, this is alright too
os.loadAPI("coolutils.lua")
```

An easy, manual way to do this would be to run the line of code inside of the program called lua (the one accessed by typing "lua" without quotation marks into the shell).
