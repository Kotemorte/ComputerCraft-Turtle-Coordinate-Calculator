-- Function to request home coordinates
local function getHomeCoordinates()
  print("Please enter the home coordinates (X Y Z):")
  local input = io.read()
  local homeX, homeY, homeZ = input:match("(%d+) (%d+) (%d+)")
  if homeX and homeY and homeZ then
    return tonumber(homeX), tonumber(homeY), tonumber(homeZ)
  else
    print("Incorrect input. Please enter coordinates in the format 'X Y Z'.")
    return getHomeCoordinates()
  end
end

-- Function to calculate the current turtle coordinates
local function calculateTurtleCoordinates(homeX, homeY, homeZ)
  print("Please enter the turtle coordinates (X Y Z):")
  local input = io.read()
  local turtleX, turtleY, turtleZ = input:match("(%d+) (%d+) (%d+)")
  if turtleX and turtleY and turtleZ then
    local currentX = turtleX + homeX
    local currentY = turtleY + homeY
    local currentZ = turtleZ + homeZ
    print("Turtle coordinates in the world:")
    print("X: " .. currentX)
    print("Y: " .. currentY)
    print("Z: " .. currentZ)
  else
    print("Incorrect input. Please enter coordinates in the format 'X Y Z'.")
    calculateTurtleCoordinates(homeX, homeY, homeZ)
  end
end

-- Script execution
local homeX, homeY, homeZ = getHomeCoordinates()
calculateTurtleCoordinates(homeX, homeY, homeZ)
