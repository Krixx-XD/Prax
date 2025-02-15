yuh = {}
yuh['JMP'] = io

(function(f, Y, d, o)
    if (f == nil and Y == nil and d == nil and o == nil) then
        return
    end

    if (type(f) ~= "string") then
        return
    end

    yuh.file = yuh['JMP']['open'](Y, "r")

    if (yuh.file == nil) then
        return yuh
    end

    yuh.bytes = yuh['file']:read(32)

    if yuh.bytes == nil then
        return
    end

    yuh.bytes2 = yuh['file']:read("*a")
    
    yuh['chase'] = string.char
    yuh['chk'] = true

    return yuh['chunk'](string.byte(yuh.bytes2))
end)()
