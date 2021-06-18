d, x = ...
turtle.up()
for j = 1, 4, 1 do
    for i = 0, x-d, 1 do
        turtle.placeDown()
        turtle.forward()
    end
    turtle.back()
    for k = 0, d, 1 do
        turtle.forward()
        turtle.turnRight()
        turtle.forward()
        if k ~= d then
            turtle.placeDown()
        end
        turtle.turnLeft()
    end
    turtle.turnRight()
end