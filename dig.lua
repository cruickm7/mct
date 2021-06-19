d, s = ...
if d > 1 then
    x = s - d
    else
    x = s
end
turtle.up()
for j = 1, 4, 1 do
    for i = 1, x-2, 1 do
        turtle.placeDown()
        turtle.forward()
    end
    for k = 0, d, 1 do
        if k ~= 0 then
           turtle.forward() 
        end
        turtle.turnRight()
        turtle.forward()
        if k ~= d then
            turtle.placeDown()
            turtle.turnLeft()
        end
    end
    turtle.turnRight()
end