t = 0
while true do
    local s, d = turtle.inspect()
    if d.name == "minecraft:stone" then
        turtle.dig()
        t = t + 1
        print(t)
    end
    if turtle.getItemCount() == 64 then
        turtle.dropDown()
    end
end