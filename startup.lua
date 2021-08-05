-------- CONFIGURATION --------

-- Whether this program is enabled or not
local enabled = true

-- Configure what is and isn't printed
local doPrint = {
    -- General things
    general = false,
    -- Errors
    errors = true,
    -- Delay to allow readability
    delay = {
        -- Length of delays for general prints
        -- and error prints
        -- To disable these set them to 0
        delayLengthGen = 0.1,
        delayLengthErr = 0.7
    }
}

-- All files in this directory will be loaded
-- as an API on boot.
-- Write it as a string in this format: /example
local apiDir = "/fujiAPIs"

---------------------------



local function doDelay(type)
    if type == "gen" then
        os.sleep(doPrint.delay.delayLengthGen)
    end
    if type == "err" then
        os.sleep(doPrint.delay.delayLengthErr)
    end
end

if not enabled then return end

if not fs.exists(apiDir) then
    if doPrint.errors then
        print(apiDir .. " doesn't exist!")
        doDelay("err")
    end
    return
end

local apiList = fs.list(apiDir)

for k, v in pairs(apiList) do
    local fullDir = apiDir .. "/" .. v
    if not os.loadAPI(fullDir) and doPrint.errors then
        print("Failed to load API " .. fullDir)
        doDelay("err")
    else
        if doPrint.general then
            print("Loaded API " .. fullDir)
            doDelay("gen")
        end
    end
end
