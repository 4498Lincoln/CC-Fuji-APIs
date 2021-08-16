function sreceive(prot, sid, timeouttime)
    local timeouttime = timeouttime or math.huge
    local deadline = os.clock() + timeouttime
    while true do
        local timelimit = deadline - os.clock()
        if timelimit <= 0 then
            -- Timed out... somehow
            return nil
        end
        local senderId, message, protocol = rednet.receive(prot, timelimit)
        if senderId == sid then
            return senderId, message, protocol
        elseif not senderId then
            -- Timed out
            return nil
        end
    end
end
