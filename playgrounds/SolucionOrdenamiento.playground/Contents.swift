//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class FigurasGeometricas{
    var color:String
    init(color:String){
        self.color = color
    }
}

class Triangulo:FigurasGeometricas{
    var lado1:Int
    var lado2:Int
    var lado3:Int
    init(color:String,lado1:Int,lado2:Int,lado3:Int)
    {
        self.lado1 = lado1
        self.lado2 = lado2
        self.lado3 = lado3
        super.init(color:color )
    }
}
