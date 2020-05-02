
turtle.refuel()

print("Fuel Level is: ")
print(turtle.getFuelLevel())

-- length of tunnel, width and height are 10
local length = 10

-- Relative position is marked by row primarily, then stack/height, then block
local row = 0

--width/row loop
for i = 1,10,1
do
  --height/stack loop
  for j = 1,10,1
  do
    --length/block loop
    for k = 1,length,1
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
  for j = 1,11,1
  do
    turtle.down()
  end
  
  
  
  --should eventually go back to chest to drop off and refuel here
  
  --go back to chest to drop off
  turtle.turnLeft()
  for j = 0,row,1
  do
    turtle.forward()
  end
  turtle.turnLeft()
  --drop
  
  turtle.turnLeft()
  turtle.forward()
  turtle.forward()
  turtle.turnRight()
  --get coal, put in slot 1
  turtle.refuel()
  
  if row = 0 then
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
  elseif row = 1 then
    turtle.turnRight()
    turtle.turnRight()
  else
    turtle.turnLeft()
    for j = 1,row,1
    do
      turtle.dig()
      turtle.forward()
    end
    turtle.turnLeft()
  end
  
  row = row + 1
  
  
end
  

 
