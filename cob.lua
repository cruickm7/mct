while true do
    if turtle.inspect() then
        turtle.dig()
    end
    if turtle.getItemCount() == 64 then
        turtle.dropDown()
    end
end