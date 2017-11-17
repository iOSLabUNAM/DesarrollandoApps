//Interpolacion de Cadenas
//Colecciones (arrays y matrices)
//Colecciones (Diccionarios)
//Colecciones (Conjuntos)
//Colecciones (Tuplas)

import UIKit


//Interpolacion de cadenas
var name:String = "Pedro"
var age = 22
var latitude = -86.783333//siempre swift escojera double
type(of:latitude)

"Your name is  \(name)"
"Your name is " + name //ineficiente

"Your name  \(name), your age \(age), and your latitude is\(latitude)"
"Your age sis \(age).In  \(age) years your age will be  \(age * 2) "





/*“Swift provides three primary collection types, known as arrays, sets, and dictionaries, for storing collections of values. Arrays are ordered collections of values. Sets are unordered collections of unique values. Dictionaries are unordered collections of key-value associations.”*/

//------------------------------Colecciones (arrays)--------------------------------
/*“An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.”*/

var someInts = [Int]()
// crea un arreglo vacio de enteros
print("someInts is of type [Int] with \(someInts.count) items.")
//.count regresa el numero de elementos del arreglo

someInts.append(3)
//agrega 3 al arreglo

print(someInts)
someInts = []
type(of: someInts)
//Cambia el valor del arreglo a vacion pero queda con tipo entero

var someValues = Array(repeating: 0.0,count: 3)
//crea un arreglo con  valores repetidos

var otherValues = Array(repeating: 2.5, count: 3)
var allValues = someValues + otherValues
//Suma los Arreglos

var shoppingList: [String] = ["Eggs","Milk"]
//crea el arreglo con valores iniciales

var arrayAnyType: [Any] = ["Anything",true,3,3.2]
type(of:arrayAnyType)

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty{
    print("The shoping is empty ")
    //si shoppingList es ta vacia (true) entra aqui
}else{
    print("The shopping list is not empty")
    //si tiene elementos (False ) entra aqui
}

shoppingList.append("Flour")

shoppingList += ["Baking Power"]
shoppingList += ["Chocolate Spread","Cheese","Butter"]
print(shoppingList)
var firstItem = shoppingList[0]
// se le asigna el valor que este an la posicion [0] de la shopping List a firstItem

shoppingList[0] = "Six eggs"
//cambia el Valor de la posicion  [0] por "Six Eggs"

shoppingList[4...6] = ["Bananas","Apples"]
print(shoppingList)

shoppingList.insert("Maple Syrup", at: 0)
//inserta maple Syruo en la posicion  0

let mapleSyrup = shoppingList.remove(at:0)
//remueve lo que tiene la posicion 0 y lo asigna a mapleSyrup

firstItem = shoppingList[0]
//firstItem toma el valor de shoppingList en la posicion 0

let apples = shoppingList.removeLast()
//remueve el valor de la ultima posicion y lo asigna a apples

for item in shoppingList{
    print(item)
}


for (index,value) in shoppingList.enumerated(){
    //.enumerated no da la lista enumerad a indice, valor
    print("Item \(index + 1): \(value)")
}


//------------------------------Colecciones (Diccionarios)-------------------------------------
/*“A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary do not have a specified order. ”*/

var namesOfIntegers = [Int: String]()
//declarar un diccionario vacio

namesOfIntegers[16] = "sixteen"
print(namesOfIntegers)
//a la llave 16 le da el valor de Sixteen

namesOfIntegers = [:]
type(of: namesOfIntegers)

//var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//distintos tipos de delaracion de diccionarios

print("The airports dictionary contains \(airports.count) items.")



if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
//verifica si el arreglo esta  vacio

print(airports)
airports["LHR"] = "London"
print(airports)
airports["LHR"] = "London Heathrow"
print(airports)
//crea la llave LHR , la asigna y luego la cambia



if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
print("The old value for DUB was \(oldValue).")
}
//hace el update del valor


if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

airports["APL"] = "Apple International"

//airports["APL"] = nil

if let removedValue = airports.removeValue(forKey: "DUB") {
print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
//remueve el valor si existe

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

    
for airportCode in airports.keys {
        print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}


let airportCodes = [String](airports.keys)


let airportNames = [String](airports.values)




//------------------------------Colecciones (Conjuntos)----------------------------------------
/*“A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once.”
    --Elements can´t be repeated*/

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters.insert("a")
print(letters)
//no se pueden repetir elementos

letters = []
type(of: letters)
//Cambia el valor del conjunto a vacio pero queda con tipo Character

//var favoriteGenres: Set<String> = ["Rock","Classical","Hip Hop"]
var favoriteGenres: Set = ["Rock","Classical","Hip Hop"]
//las maneras de declarar conjunto diferente de vacio

print("I have \(favoriteGenres.count) favorite music generes.")


if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
//verifica si esta vacio o no el conjunto

favoriteGenres.insert("Jazz")
//inserta Jazz a la conjunto


if let removedGenre = favoriteGenres.remove("Rock") {
    //remueve el item de la conjunto si exixte
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}



if favoriteGenres.contains("Funk") {
    //prefunta si existe funk en la conjunto
print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}



for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
// Para tener valores en un orden especifico usamos .sorted regresa los elementos como arreglo acomodados por el operador <

//Operaciones con Conjuntos
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
//muestra la union de 2 conjuntos

oddDigits.intersection(evenDigits).sorted()
//muestra la interseccion de 2 conjuntos

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
//muestra la resta de los conjuntos

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
//muestra los elementosd que no se intersectan entre los conjuntos


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
//regresa un valor booleano al hacer la comparacion de subconjunto

farmAnimals.isSuperset(of: houseAnimals)
//regresa un valor booleano al hacer la comparacion de superconjunto

farmAnimals.isDisjoint(with: cityAnimals)
//regresa un valor booleano al hacer la comparacion si no intersectan los conjuntos



//-------------------------------Colecciones (Tuplas)---------------------------------------
/*They work exactly like lists,except that tuples can´t be changed in-place (they´re inmutable)*/
let tuple = ("Pedro",22,"Mexico")

print("my name is \(tuple.0), my age is \(tuple.1) and my country is \(tuple.2)")

let (name1,age1,country) = tuple
print(name1)
print(age1)
print(country)






