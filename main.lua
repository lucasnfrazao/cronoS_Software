local D=800
function love.load()

love.window.setTitle("Cronomêtro")

love.window.setMode(D,D)

love.graphics.setBackgroundColor(0,0,255)
  
  mili=0
  
  seg=0
  
  min=0
  
  numVoltas = 0

end

function love.update(dt)
  
  mili=mili+dt*100
  
  if mili>=100 then
    
    mili=0
    
    seg=seg+1
    
    if seg==60 then
      
      seg=0
      
      min=min+1
      
      if min==60 then
        
        min=0
      
      end
      
      
      numVoltas = numVoltas + 1
      
      
    end
  end
  
  
end

function love.draw()
  
local w=love.graphics.getWidth()

local h=love.graphics.getHeight()

fonte=love.graphics.newFont("ariblk.ttf",100)

fonte2=love.graphics.newFont("ariblk.ttf",40)

--data=os.date("*t")

--minuto=data.min

--seg=data.sec


miliString = tostring(mili)

textoMili=love.graphics.newText(fonte,string.format("%2d", miliString))

textoSeg=love.graphics.newText(fonte,tostring(seg))

textoMin=love.graphics.newText(fonte,tostring(min))

textoSeparador1=love.graphics.newText(fonte,":")

--textoSeparador2=love.graphics.newText(fonte,":")



textoVolta = love.graphics.newText(fonte2,"Volta(s):"..numVoltas)

--love.graphics.setColor(0,0,0)

love.graphics.draw(textoMili,w/2+140,h/2-50)

love.graphics.draw(textoSeparador1,w/2-210,D/2-60)

love.graphics.draw(textoSeg,w/2-40,h/2-50)

love.graphics.draw(textoMin,w/2-300,h/2-50)

love.graphics.draw(textoVolta,100,100)

--love.graphics.draw(tostring(seg),D/2,D/2,,50/100)

--love.graphics.draw(tostring(seg*100/60),D/2,D/2,,50/100)

love.graphics.setColor(255,255,255)


end