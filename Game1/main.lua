function love.load()
  button = {}
  button.x = 200
  button.y = 200
  button.size = 50

  score = 0
  timer = 20

  myFont = love.graphics.newFont(40)
end

function love.update(dt)
timer = timer - (1/60)
  if timer <0 then
    timer =0
  end
end

function love.draw()
  love.graphics.setColor(255,0,0)
  love.graphics.circle("fill",button.x,button.y,button.size)

  love.graphics.setFont(myFont)
  love.graphics.setColor(255,255,255)
  love.graphics.print(score)
  love.graphics.print(timer,love.graphics.getWidth()-110)
end

function love.mousepressed(x,y,b,istouch)
  if b==1 then
    if (distanceBetweenPoints(button.x,button.y,love.mouse.getX(),love.mouse.getY()) <button.size) then
      score = score +1
      math.random(0,20)
      button.x = math.random(button.size,love.graphics.getWidth()-button.size)
      button.y =  math.random(button.size,love.graphics.getHeight()-button.size)
    end
  end
end

function distanceBetweenPoints(x1,y1,x2,y2)
  return math.sqrt((x1-x2)^2 + (y1-y2)^2)
end
