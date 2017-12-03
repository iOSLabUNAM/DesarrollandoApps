//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func funcion1(nombre: String){
    print("Hola " + nombre)
}

funcion1(nombre: "Daniel")

func funcion2(_ nombre: String,_ edad: Int){
    print("Hola " + nombre)
}

funcion2("Daniel", 22)



func decirHola(a destino: String,de remitente: String)
{
    print("\(remitente) dice hola a \(destino)")
}

decirHola(a: "daniel", de: "luis")

func imprimirRecord(de jugador: String, record: Int = 0)
{
    print("el record del jugador \(jugador) es \(record)")
}

imprimirRecord(de: "jose")
imprimirRecord(de: "daniel",record: 10)

struct Carro {
    var marca : String
    var modelo : String
    var color : String
}

let miCarro = Carro(marca: "Honda", modelo: "Accord", color: "Arena")

struct temperatura {
    var celsius : Double = 0.0 {
        willSet{
            print("Se va a agregar \(newValue)")
        }
        didSet{
            if celsius > oldValue
            {
                print("Se agregaron \(celsius - oldValue)")
            }
        }
        
    }
    
    var fahrenheit : Double {
        return celsius * 1.8 + 32
    }
    
    var kelvin : Double{
        return celsius + 273.15
    }
    
    static var boiling = 100
    static var boilingFahr = 100 * 1.8 + 32
    static var boilingKelv = 100 + 273.15
    
    mutating func updateTemp(newTemp temperatur: Double)
    {
        celsius = temperatur
    }
}

var temperaturaAmbiente = temperatura(celsius: 28)
print(temperaturaAmbiente.fahrenheit)
print(temperaturaAmbiente.kelvin)
print(temperaturaAmbiente.celsius)
temperaturaAmbiente.updateTemp(newTemp: 40)
print(temperaturaAmbiente.fahrenheit)
print(temperaturaAmbiente.kelvin)
print(temperaturaAmbiente.celsius)

print(temperatura.boiling)


var cadena = "hola Mundo"

for caracter in cadena.characters
{
    print(caracter)
}

var arreglo = [3,2,1,2,3,1]

for (index, item) in arreglo.enumerated()
{
    print("\(item) en \(index)")
}


var a : Double = 1
var b : Double = 3
a + b
