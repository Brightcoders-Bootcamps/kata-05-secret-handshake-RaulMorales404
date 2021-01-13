# 1 = tienes que convertir de decimal a binario
# 2 si el nuemro es mayor a 16 se invierte la posicion tomando los primeros binarios de derecha a izquierda
# 3 crear una matriz segun el nuemro binarios de derecha
# 4 meter los saludos ala matriz segun las reglasprint 'dame un numero: '

puts"Dame numero"
numero_decimal = gets.to_i
puts "Decimal #{numero_decimal}  a Binario :#{numero_decimal.to_s(2)}"
array_saludos =["wink","double_blink","clouse_your_eyes","jump"]
wink = 1
double_blink = 2
clouse_your_eyes = 4
jump = 8

numeros =[]
guardar_true=[]

numeros[0]=wink #1
numeros[1]=double_blink #2
numeros[2]=clouse_your_eyes#3
numeros[3]=jump#4

i=0
while  i < numeros.length
  if numero_decimal > numeros[i]
    guardar_true[i]=numeros[i]
  end
i=i+1
end
puts "TEST"
c = 0
d = 1
suma=0
array_suma_decimal=[]
  while  c <  guardar_true.length             
    array_suma_decimal[c] = guardar_true[c] + guardar_true[d].last
     if array_suma_decimal[c]==numero_decimal
      puts "arreglo :#{array_suma_decimal[c]} y #{numero_decimal}}"

     end
      suma = suma + guardar_true[c]
        p "suma es: #{suma} "
        puts guardar_true[c]
  c=c+1
  d=d+1
  end


