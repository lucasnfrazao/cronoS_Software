local D=800
function love.load()

love.window.setTitle("Cronomêtro")

love.window.setMode(D,D)

love.graphics.setBackgroundColor(0,0,255)
  
  mili=0
  
  seg=0
  
  min=0
  
  dead=false

fonte=love.graphics.newFont("ariblk.ttf",75)

miliString=tostring(mili/10)

textoMili=love.graphics.newText(fonte,string.format("%2d",miliString))

textoSeg=love.graphics.newText(fonte,tostring(seg))

textoMin=love.graphics.newText(fonte,tostring(min).."  :")

end

local function mensagemRecebida (mensagem)
  if(mensagem == "dead") then
    dead = not dead
  end
  if mensagem == "reset" then
    
    if dead then
      
      mili=0
      
      seg=0
      
      min=0
      
    end
    
  end
end

function love.keypressed(key)
  
  if key == "d" then
    
    dead= not dead
    
  end
  
end

function love.update(dt)
  
  msgr.checkMessages()
  
  if dead then
  
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
  
end

function love.draw()
  
local w=love.graphics.getWidth()

local h=love.graphics.getHeight()

--love.graphics.setColor(0,0,0)

love.graphics.draw(textoMili,w/2+150,h/2-100)

love.graphics.draw(textoSeg,w/2-50,h/2-100)

love.graphics.draw(textoMin,w/2-250,h/2-100)

--love.graphics.draw(tostring(seg),D/2,D/2,,50/100)

--love.graphics.draw(tostring(seg*100/60),D/2,D/2,,50/100)

love.graphics.setColor(255,255,255)


end