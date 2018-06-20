local D=800
function love.load()

love.window.setTitle("Cronomêtro")

love.window.setMode(D,D)

love.graphics.setBackgroundColor(0,0,255)
  
  mili=0
  
  seg=0
  
  min=0

end

function love.update(dt)
  
  mili=mili+dt*1000
  
  if mili>=1000 then
    
    mili=0
    
    seg=seg+1
    
    if seg==60 then
      
      seg=0
      
      min=min+1
      
      if min>=60 then
        
        min=0
        
      end
      
    end
  end
  
  
end

function love.draw()
  
local w=love.graphics.getWidth()

local h=love.graphics.getHeight()

fonte=love.graphics.newFont("ariblk.ttf",100)

--data=os.date("*t")

--minuto=data.min

--seg=data.sec

textoMili=love.graphics.newText(fonte,tostring(mili))

textoSeg=love.graphics.newText(fonte,tostring(seg))

textoMin=love.graphics.newText(fonte,tostring(min))

--love.graphics.setColor(0,0,0)

love.graphics.draw(textoMili,D/2+150,D/2)

love.graphics.draw(textoSeg,D/2,D/2)

love.graphics.draw(textoMin,D/2-150,D/2)

--love.graphics.draw(tostring(seg),D/2,D/2,,50/100)

--love.graphics.draw(tostring(seg*100/60),D/2,D/2,,50/100)

love.graphics.setColor(255,255,255)


end