//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var variable = 21
let constante = 3.14

variable = 25

var entero : Int = 23
var flotante : Float = 23.1334
var doble : Double = 12.32
var booleano : Bool = true

var entero8 : Int8 = 127
var entero16  : Int16 = 1231
var entero32 : Int32 = 8457203
var entero64 : Int64 = 4983705423904385

print(Int8.max)

var enteroSinSigno : UInt = 48931042314298


var binario = 0b1011
var octal = 0o13
var hexadecimal = 0xB

var 😄 = "🤣"

print(😄)

var π = "Apple"

var numero1 = 23
var numero2 = 56

numero1 + numero2

65 - 23

70 / 3
34 * 2


numero2 += 2
numero2 *= 3
numero2 /= 5
numero1 -= 3



// Logico

numero1 > numero2
numero2 < numero1
numero1 >= numero2
numero2 <= numero1
numero1 != numero2

false || true
false && true


if numero2 > numero1
{
    print("Numero 2 es mayor")
} else if numero1 < 0
{
    print("Numero 1 es menor a 0")
}
else
{
    print("else")
}
var opcion = 4

switch opcion
{
case 27,4,5:
    print("Entró en la seleccion")
    break
case 1...10:
    print("Entró en el rango")
    break
case 4:
    print("Entro en otro")
    break
case 1:
    break
case 4:
    print("Entró")
    break
case 5:
    print("Caso 5")
default:
    break
}

for indice in 1...5
{
    print(indice)
}

for _ in 1...5
{
    print("Estamos en un for")
}
var indice = 0;

while indice < 10
{
    indice += 1
}

repeat
{
    
}while(indice < 10)

var cadena1 = "Inicio"
var cadena2 : String = "Final"

var cadena3 = cadena1 + cadena2

var caracter : Character = "a"

cadena1.append(caracter)
cadena2.append(" Inicio")

var longitud = cadena1.count

if cadena1 == cadena2
{
    print("Son iguales")
}
else
{
    print("No son iguales")
}

cadena1.isEmpty

cadena1.hasPrefix("In")
cadena1.hasSuffix("cio")
var cadenaVariasLineas = """
Hola me llamo Daniel,
y aqui estoy enseñando en el iOS Lab
"""
print(cadenaVariasLineas)

cadenaVariasLineas.contains("Daniel")

cadena1.uppercased()
cadena1.lowercased()



