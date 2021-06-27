y2 = 53
y = y2/2-0.5
z = 0
z2 = 0
z2 = z2 + 1
for i = y, 1, -1 do
    for k = 4, 1, -1 do
        for j = i*2, 1, -1 do
            z2 = z2 + 1
            if j ~= 1 then
                z = z + 1
            end
        end
        if i ~= y and k ~= 1 then
            z2 = z2 + 2
            z = z + 1
        end
    end
    z = z + 1
    z2 = z2 + 3
end
z = z + 1
print("Will use " .. z  .. " blocks and " .. z2  .. " fuel")