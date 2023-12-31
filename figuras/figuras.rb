#! /home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby

# Ejemplo de Programación Estructurada o Modular

def perimetro_cuadrado(longitud_lado)
  longitud_lado * 4
end

def area_cuadrado(longitud_lado)
  longitud_lado * longitud_lado
end

def perimetro_triangulo(lado1, lado2, lado3)
  lado1 + lado2 + lado3
end

def area_triangulo(base, altura)
  base * altura / 2.0
end

#Linea de comando
puts "\nLínea de comandos: "

p ARGV

# Entrada/Salida

if ARGV.size == 0
  puts "Introduzca un número: "
  c = STDIN.gets
  n = c.to_i
  puts "El número introducido es #{n}"
else
  n = ARGV[0].to_i
end

# Bucles

puts "\n--|--|--| Cuadrado |--|--|--\n"
i = 1
while i <= n
  puts "Perimetro de un cuadrado de lado #{i}: #{perimetro_cuadrado(i)}"
  puts "Área de un cuadrado de lado #{i}: #{area_cuadrado(i)}"
  i += 1
end

puts "\n--|--|--| Triángulo |--|--|--\n"
i = 1
while i <= n
  puts "Perimetro de un triangulo de lados #{i}: #{perimetro_triangulo(i, i, i)}"
  puts "Área de un triangulo de base y altura #{i}: #{area_triangulo(i, i)}"
  i += 1
end
