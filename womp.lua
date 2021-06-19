x = 1
y2 = ...
y = y2/2-0.5
z = 0
turtle.up()
for i = y, 1, -1 do
    for k = 4, 1, -1 do
        for j = i*2, 1, -1 do
            if turtle.getItemCount(x) <= 1 then
                x = x + 1
                turtle.select(x)
            end
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
print("Used " .. z  .. "blocks")

function check()
    q = 0
    for h = 1, 16, 1 do
        if turtle.getItemCount(h) <= 1 then
            q = q + 1
        end
    end
    if q == 16 then
        while turtle.suck() == "false" do
            turtle.suck()
            print("Need cobble")
        end
        q = 0
    end
    if turtle.getItemCount(x) <= 1 then
        x = x + 1
        turtle.select(x)
        if x == 16 then
            x = 1
        end
    end
end