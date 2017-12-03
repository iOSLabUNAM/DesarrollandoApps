//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func decirHola()
{
    print("Hola a todos+")
}

func decirHolaAlguien( nombre : String)
{
    print("Hola \(nombre)")
}

decirHolaAlguien(nombre : "Julio")
func decirHolaAlguienOtravez(_ nombre: String)
{
    print("Hola \(nombre)")
}

decirHolaAlguienOtravez("Aide")

func decirAdiosAlguien(a nombre: String )
{
    print("Adios \(nombre)")
}

decirAdiosAlguien(a: "Pedro")

func desmentir(nombre: String = "Fulanito", edad : Int = 20, genero : String = "¿Asumes mi genero?")
{
    print(nombre)
    print(edad)
    print(genero)
}

desmentir(nombre: "Barrera",genero : "Hombre")

func multiplicarx2(entrada numero : Int) -> Int
{
    return numero * 2
}

multiplicarx2(entrada: 4)




