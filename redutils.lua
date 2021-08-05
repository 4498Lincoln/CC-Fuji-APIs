function sreceive(prot, sid)
    while true do
        local senderId, message, protocol = rednet.receive(prot)
        if senderId == sid then
            return senderId, message, protocol
        end
    end
end