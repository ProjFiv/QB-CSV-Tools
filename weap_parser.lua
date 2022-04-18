QBShared = require('config/weapons')
func = require('func')

local shit = 'weapon, name, label, ammotype, damagereason'
local count = 0
for i, v in pairs(QBShared.Weapons) do
    shit = shit .. '\n' .. i .. ',' .. v['name'] .. ',' .. v['label'] .. ',' .. tostring(v['ammotype']) .. ',' .. v['damagereason']
    count = count + 1
end

func.saveFile('weapons' ,shit)

print("Done : " .. tostring(count) .. " weapons")