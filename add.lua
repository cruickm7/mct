rednet.open("right")
turtle.up()

function search(s)
    for i = 1, 16, 1 do
        print(i)
        turtle.select(i)
        if turtle.getItemDetail().name == s then
            break
        end
    end
end

search("minecraft:lava_bucket")
turtle.placeDown()
turtle.up()
search("minecraft:cobblestone")
turtle.placeDown()
rednet.receive()
search("minecraft:water_bucket")
turtle.up()
turtle.placeDown()
