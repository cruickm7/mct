rednet.open("right")
turtle.up()
for i = 1, 16, 1 do
    local details = turtle.getItemDetail()
    if details.name == "minecraft:lava_bucket" then
        print(details.name)
        turtle.select(i)
        break
    end
end
turtle.placeDown()