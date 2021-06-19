x = 1
y2 = ...
y = y2/2-0.5
z = 0
function fill()
    print("Need cobble, hit enter to fill")
    io.read()
    for t = 16, 1, -1 do
        turtle.select(t)
        turtle.suckUp()
    end
    check()
end

function check()
    c = 0
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
end

turtle.up()
for i = y, 1, -1 do
    for k = 4, 1, -1 do
        for j = i*2, 1, -1 do
            turtle.forward()
            if j ~= 1 then 
                check()
                turtle.placeDown()
                z = z + 1
            end
        end
        turtle.turnRight()
        if i ~= y and k ~= 1 then
            turtle.down()
            check()
            turtle.placeDown()
            turtle.up()
            z = z + 1
        end
    end
    turtle.forward()
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()
    check()
    turtle.placeDown()
    turtle.up()
end
turtle.placeDown()
z = z + 1
print("Used " .. z  .. " blocks")

