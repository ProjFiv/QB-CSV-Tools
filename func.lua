local func = {} 

function func.saveFile(filename, data)
    local file,err = io.open("csv/"..filename..".csv",'w')
    if file then
        file:write(tostring(data))
        file:close()
    else
        print("error:", err)
    end
end

return func