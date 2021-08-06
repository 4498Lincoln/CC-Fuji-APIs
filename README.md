# CC-Fuji-APIs
APIs I made mainly for my personal use in ComputerCraft. This repository was simply made to organize these. You may use these APIs too, if you want.

## Information

### Loading APIs

In order to load an API in ComputerCraft, use [os.loadAPI()](https://computercraft.info/wiki/Os.loadAPI) with a string containing the path to your API as an argument. For example, if an API file is called "coolutils.lua" and it is in the directory "/myAPIs," to load it, you would run the following line of code:

```lua
os.loadAPI("/myAPIs/coolutils.lua")

-- ... Or if it is in the root directory, this is alright too
os.loadAPI("coolutils.lua")
```

An easy, manual way to do this would be to run the line of code inside of the program called lua (the one accessed by typing "lua" without quotation marks into the shell).

Or, you could use the automatic API loader included in this repository that loads API files in a certain directory automatically upon startup. [It's link is here,](/startup.lua) or you could run this command to install a version of it to "/fujiAPIautoload.lua" which isn't kept up to date but is functioning.

`pastebin get 6BUugpZe fujiAPIautoload.lua`

See [ComputerCraft's wiki page about startup scripts](https://www.computercraft.info/wiki/Startup) (and possibly also [ComputerCraft's wiki page about the shell API](https://computercraft.info/wiki/Shell_(API))) about how to get this script to run on boot.
