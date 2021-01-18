require "./greetings"
require "./convert_binary"

print "Dime el numero del saludo secreto: "
decimal = gets.chomp.to_i
puts
greeting_secret = Binary.new
greeting_secret.convert_binary(decimal)