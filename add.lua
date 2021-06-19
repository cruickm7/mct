rednet.open("right")
turtle.up()
for i = 1, 16, 1 do
    if turtle.getItemCount() ~= 0 then
        print(turtle.getItemDetail.name)
    end
end
turtle.placeDown()