import UIKit

// void - "ничего"

// Функция не может ничего не возвращать, функция может вернуть "ничего"


// Функция без входных и выходных параметров
func greet() {
    var greeting = "Привет, мир!"
    print(greeting)
}

// ПУстая функция
func empty() {}

greet()
greet()
greet()

var firstName = "Yura"
var secondName = "Vasya"
var thirdName = "Petya"

//greet(name: firstName)
//greet(name: secondName)
//greet(name: thirdName)

//var firstGreeting = greet(name: firstName)
//var secondGreeting = greet(name: secondName)
//var thirdGreeting = greet(name: thirdName)
//
//print(firstGreeting)
//print(secondGreeting)
//print(thirdGreeting)


// Функция с несколькими входными параметрами и различными типами
func getMultiply(a: Int64, b: Float) -> Double {
    print(type(of: b))
    var result = Double(a) * Double(b)
    return result
}

var int32Value = Int32(10)

// Если передать аргумент числом, тип подставится такой же как указан в функции
print(getMultiply(a: Int64(int32Value), b: 2.757767689767352760767089723567035760357673209867235))

var something: Float = 4.56732567356709325768257680702478047
print(something)

// Кортеж в возвращаемом значении. Первый элемент - безымянный, второй - именованный
// Безымяный входной параметр
func fractionNum(_ number: Double) -> (Int, double: Double) {
    var intValue = Int(number)
    var doubleValue = number - Double(intValue)
    return (intValue, doubleValue)
}

// Вызов функции с безымянным входным параметром
var fractioned = fractionNum(6.3)
// Обращаться к элементам кортежа можно по номерам (начиная с 0) и именам
print(fractioned.0)
print(fractioned.1)
print(fractioned.double)


print(fractionNum(5.7))

var point: (x: Int, Int) = (4, 6)
print(point)

// Опциональный кортеж в возвращаемом значении
func someName(number: Int) -> (Int, String)? {
    
    switch number % 2 {
    case 0:
        return(number, "even")
    case 1:
        return(number, "odd")
    default:
        return nil
    }
    
}

// аналог Int? и последующая распаковка через ??

// дефолтный параметр (параметр по умолчанию)
func makeGreet(to name: String = "инопланетянин", outsideName insideName: Int = 10) -> String {
    var name = name
    name = "Petya"
    print(insideName)
    return "Привет" + name
}


// вызов с внешним именованием и дефолтным параметром
var greetString = makeGreet(to: "Yury", outsideName: 0)
// вызов без указания дефолтного параметра
var greetString2 = makeGreet(to: "Yury")

//сковзнгой аргумент, передается указатель на переменную, а не значение
func increment(_ number: inout Int) {
    number += 1
}

var someNum = 10
// при передаче входного параметра нужно писать амперсанд перед названием переменной
increment(&someNum)
print(someNum)

// две функции с одинаковыми названиями и аргументами разных типов
func printSomething(_ printableItem: String) {
    print("String:", printableItem)
}
// Перегрузка функции
func printSomething(_ printableItem: Int) {
    print("Int:", printableItem)
}

printSomething("Уляля")
printSomething(10)

// К домашке
var intNumber = 1234
print(intNumber % 10)
print(intNumber / 10)

func doSomething5Times(currentCounter: Int = 0) {
    if currentCounter == 5 {
        return
    }
    print("Я горячий мексиканец")
    doSomething5Times(currentCounter: currentCounter + 1)
}

doSomething5Times(currentCounter: -1)

// 0 1 1 2 3 5 8

// i[0] = 0
// i[1] = 1
// i[n] = i[n - 1] + i [n - 2]

func getFibNum(onPosition index: UInt) -> UInt {
    if index == 0 {
        return 0
    }
    
    if index == 1 {
        return 1
    }
    
    return getFibNum(onPosition: index - 1) + getFibNum(onPosition: index - 2)
}

getFibNum(onPosition: 10)



