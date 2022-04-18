QBShared = require('config/items')
func = require('func')

local shit = 'item, name, label, weight, type, image, unique, useable, shouldClose, combinable, description'
local count = 0
for i, v in pairs(QBShared.Items) do
    shit = shit .. '\n' .. i .. ',' .. v['name'] .. ',' .. v['label'] .. ',' .. v['weight'] .. ',' .. v['type'] .. ',' .. v['image'] .. ',' .. tostring(v['unique']) .. ',' .. tostring(v['useable']) .. ',' .. tostring(v['shouldClose']) .. ',' .. tostring(v['combinable']) .. ',' .. v['description']
    count = count + 1
end

func.saveFile("item",shit)


print("Done : " .. tostring(count) .. " items")
