rednet.open("right")
turtle.up()
for i = 1, 16, 1 do
    if turtle.getItemDetail() == "minecraft:lava_bucket" then
        turtle.select(i)
        break
    end
end
turtle.placeDown()