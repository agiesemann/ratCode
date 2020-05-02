
turtle.refuel()

print("Fuel Level is: ")
print(turtle.getFuelLevel())

local length = 10

--width loop
for i = 1,10,1
do
  --height loop
  for i = 1,10,1
  do
    --length loop
    for i = 1,length,1
    do
      turtle.dig()
      turtle.forward()
    end
    --go up one and turn around
    turtle.digUp()
    turtle.up()
    turtle.turnRight()
    turtle.turnRight()
  end
  --go down 11, right one, and turn
  for i = 1,11,1
  do
    turtle.down()
  end
  
  --should eventually go back to chest to drop off and refuel here
  turtle.turnRight()
  turtle.dig()
  turtle.forward()
  turtle.turnLeft()
end
  

 
