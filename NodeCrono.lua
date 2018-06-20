local led1 = 3
local led2 = 6
local sw1 = 1
local sw2 = 2

local minhamat = "1811240"

local msgr = require "mqttNodeMCULibrary"

local estadoled = gpio.LOW

local function cbchave1()
  print("pressionou chave 1")
  msgr.sendMessage("dead", minhamat .. "love")
end

local function cbchave2()
  print("pressionou chave 2")
  msgr.sendMessage("reset", minhamat .. "love")
end

gpio.mode(sw1, gpio.INPUT, gpio.PULLUP)
gpio.mode(sw2, gpio.INPUT, gpio.PULLUP)
gpio.mode(led1, gpio.OUTPUT)
gpio.mode(led2, gpio.OUTPUT)
gpio.trig(sw1, "down", cbchave1)
gpio.trig(sw2, "down", cbchave2)

msgr.start(minhamat, minhamat .. "node", mensagemRecebida) -- use unique id
