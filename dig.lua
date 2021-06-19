d, s = ...
g = 0
x = s - (d * 2 - 2)
print(d .. s .. x)
rednet.open("right")
function fill()
    print("Need cobble, hit enter to fill")
    io.read()
    for t = 16, 1, -1 do
        turtle.select(t)
        turtle.suckUp()
        turtle.suckDown()
    end
    check()
end

function check()
    c = 1
    while c ~= 16 do
        if turtle.getItemCount(c) ~= 0 then
            turtle.select(c)
            break
        else
            c = c + 1
        end
    end
    if c == 16 then
        fill()
    end
    print (c)
end
turtle.up()
for j = 1, 4, 1 do
    for i = 1, x, 1 do
        check()
        turtle.placeDown()
        turtle.forward()
        g = g + 1
    end
    print(g)
    for k = 0, d, 1 do
        if k ~= 0 then
           turtle.forward() 
        end
        turtle.turnRight()
        turtle.forward()
        if k ~= d then
            check()
            turtle.placeDown()
            turtle.turnLeft()
        end
    end
    turtle.turnRight()
end
turtle.turnRight()
turtle.forward()
local success, data = turtle.inspectDown()
while data.name ~= "minecraft:lava" do
    success, data = turtle.inspectDown()
    os.sleep(1)
end
turtle.placeDown()
rednet.broadcast("go")