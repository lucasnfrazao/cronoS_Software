local D=800
function love.load()

love.window.setTitle("Cronomêtro")

love.window.setMode(D,D)

love.graphics.setBackgroundColor(0,0,255)

ponteiro = love.graphics.newImage("Pointer.png")

end

function love.draw()
  
local w=love.graphics.getWidth()

local h=love.graphics.getHeight()

love.graphics.setColor(0,0,0)

love.graphics.circle("fill",D/2,D/2,400,128)

love.graphics.setColor(255,255,255)

love.graphics.circle("fill",D/2,D/2,380,128)

love.graphics.setColor(0,0,0)

love.graphics.circle("fill",D/2,D/2,250,64)

love.graphics.setColor(255,255,255)

love.graphics.circle("fill",D/2,D/2,245,64)

love.graphics.setColor(0,0,0)

fonte=love.graphics.newFont("ariblk.ttf",100)

texto12=love.graphics.newText(fonte,"12")

texto1=love.graphics.newText(fonte,"1")

texto2=love.graphics.newText(fonte,"2")

texto3=love.graphics.newText(fonte,"3")

texto4=love.graphics.newText(fonte,"4")

texto5=love.graphics.newText(fonte,"5")

texto6=love.graphics.newText(fonte,"6")

texto7=love.graphics.newText(fonte,"7")

texto8=love.graphics.newText(fonte,"8")

texto9=love.graphics.newText(fonte,"9")

texto10=love.graphics.newText(fonte,"10")

texto11=love.graphics.newText(fonte,"11")

love.graphics.draw(texto12,360,10)

love.graphics.draw(texto1,550,50)

love.graphics.draw(texto2,670,170)

love.graphics.draw(texto3,710,342)

love.graphics.draw(texto6,370,680)

love.graphics.draw(texto5,550,630)

love.graphics.draw(texto4,660,510)

love.graphics.draw(texto7,210,630)

love.graphics.draw(texto8,80,510)

love.graphics.draw(texto9,30,340)

love.graphics.draw(texto10,75,175)

love.graphics.draw(texto11,200,50)

data=os.date("*t")

hora=data.hour

minuto=data.min

seg=data.sec

love.graphics.setColor(0,0,0)

love.graphics.draw(ponteiro,D/2,D/2,(2*hora*math.pi/12)+((2*minuto*math.pi/60)/12)+((2*seg*math.pi/60)/60/12)-2.4,50/100)

love.graphics.draw(ponteiro,D/2,D/2,(2*minuto*math.pi/60)+((2*seg*math.pi/60)/60)-2.4,67/100)

love.graphics.setColor(255,255,255)

love.graphics.draw(ponteiro,D/2,D/2,(2*seg*math.pi/60)-2.4,69/100)

love.graphics.setColor(0,0,0)

love.graphics.circle("fill",D/2,D/2,10,64)

end