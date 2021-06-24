t = 0
while true do
    if turtle.inspect() then
        turtle.dig()
        t = t + 1
        print(t)
    end
    if turtle.getItemCount() == 64 then
        turtle.dropDown()
    end
end