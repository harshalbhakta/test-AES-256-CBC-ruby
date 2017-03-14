require 'base64'
require "aescrypt"

type = "AES-256-CBC"
key = "280f8bb8c43d532f389ef0e2a5321220b0782b065205dcdfcb8d8f02ed5115b9"
iv = "CC0A69779E15780ADAE46C45EB451A23"
data = "kelp"

key_str = [key].pack('H*') # "(\x0F\x8B\xB8\xC4=S/8\x9E\xF0\xE2\xA52\x12 \xB0x+\x06R\x05\xDC\xDF\xCB\x8D\x8F\x02\xEDQ\x15\xB9"
iv_str = [iv].pack('H*')   # "\xCC\niw\x9E\x15x\n\xDA\xE4lE\xEBE\x1A#"

puts "key_str: #{key_str}"
puts "iv_str: #{iv_str}"

encrypted = AESCrypt.encrypt_data(data, key_str, iv_str, type)
puts "encrypted result: #{encrypted}"
puts "encode64: #{Base64.encode64(encrypted)}"
