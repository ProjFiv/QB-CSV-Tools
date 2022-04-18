QBShared = require('config/vehicles')
func = require('func')

local shit = 'vehicle, name, brand, model, price, category, hash, shop'
local count = 0
for i, v in pairs(QBShared.Vehicles) do
    shit = shit .. '\n' .. i .. ',' .. v['name'] .. ',' .. v['brand'] .. ',' .. v['model'] .. ',' .. tostring(v['price']) .. ',' .. v['category'] .. ',' .. v['hash'] .. ',' .. v['shop']
    count = count + 1
end

func.saveFile('vehicle' ,shit)

print("Done : " .. tostring(count) .. " vehicles")