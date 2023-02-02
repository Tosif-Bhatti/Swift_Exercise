////SET
////A set stores distinct values of the same type in a collection with no defined ordering
//var intSet =  Set<Int>()
//
//intSet.insert(20)
//print(intSet)
//
//var strSet: Set = ["tosif", "ruchi", "parth"]
//type(of: strSet)
//strSet.insert("harsh")
//print(strSet)
//
//if let member = strSet.remove("hars") {
//    print("\(member) is out")
//} else {
//    print("not present")
//}
////guard let member = strSet.remove("harsh") else {
////    return 0
////}
////print("\(member) is out")
//
//strSet.forEach {
//    print($0.sorted())
//}
//
//strSet.sorted().forEach {
//    print($0)
//}
//let str: String?
//str = "hello"
////str = "bhatti"
//
//if strSet.contains("tosif") {
//    print("It contain ")
//} else {
//    print("it not contain ")
//}

//Set Function
//var age : Set<String> = ["20", "30", "45", "50", "ruchit"]
//var name : Set = ["tosif", "parth", "ruchit"]
//
//age.union(name).sorted()
//age.symmetricDifference(name)
//age.subtracting(name)
//age.intersection(name)
//
//age.remove("ruchit")
//age == name
//age.isSubset(of: name)
//age.isStrictSubset(of: name)
//age.isSuperset(of: name)
//age.isDisjoint(with: name)

//Function practice

//func forReturnCheck(no1: Int, no2: Int) -> (Int, Int) {
//    return (no2, no1)
//}
//print(forReturnCheck(no1: 23, no2: 45))
//
////function with optional return type
//
//func minMax(numberArray: [Int]) -> (min: Int, max: Int)? {
//    var minValue = numberArray.min()
//    var maxValue = numberArray.max()
//    return ((minValue, maxValue) as! (min: Int, max: Int))
//}
//var intArray = [20, 30, 40, 56]
//print(type(of: intArray.min()))
//if let check = minMax(numberArray: intArray) {
//    print("min is \(check) and max is \(check)")
//}
//
////argument label or external parameter name
//func argLabel(firstNumber a: Int, secondNumber b: Int) -> (no1: Int, no2: Int) {
//    return (a, b)
//}
//print(argLabel(firstNumber: 23, secondNumber: 34))
//
//func veriadicFunc<N>(member : N...) {
//    member.forEach { N in
//        print(N)
//    }
//}
//veriadicFunc(member: 3, 4, 5, 5)
//veriadicFunc(member: "hello", "hii")
////veriadicFunc(member: "hello", 45, 56)
func strwithCount(str: String) -> Int {
    print(str)
    return str.count
}
func strwithoutCount(str: String) {
    let _ = strwithCount(str: str)
}
print(strwithCount(str: "hello"))
strwithoutCount(str: "hiii")
//default value parameter
func defaultValue(user: String, company: String = "simform") {
    //user = "ruchit" we can not change parameter value bcoz it is let constant
    print("name is : \(user) and comapny is \(company)")
}
defaultValue(user: "tosif", company: "crest")
defaultValue(user: "parth")

//in out concept, when we need to change parameter value and give changes fter to the function end we use inout
func swapPara(no1: inout Int, no2: inout Int) -> (no1: Int, no2: Int) {
    let temp = no1
    no1 = no2
    no2 = temp
    return (no1, no2)
}
func swapPara2(no1: inout Int, no2: inout Int) {
    let temp = no1
    no1 = no2
    no2 = temp
}
var first = 30
var second = 45
print(swapPara(no1: &first, no2: &second))
swapPara2(no1: &first, no2: &second)
print("First \(first) and second: \(second)")

//Function type
func addNumber(no1: Int, no2: Int) -> Int {
    return no1 + no2
}
var addFunction:(Int, Int) -> Int = addNumber
//print(addNumber(2, 3))

//Function type as a parameter
func printAdd(_ addNumber:(Int, Int) -> Int, _ no1: Int, _ no2: Int) {
    print("Add: \(addNumber(no1, no2))")
}
printAdd(addNumber, 5, 3)

//Function Type as return type

func stepForward(_ value: Int) -> Int {
    return value + 1
}
func stepBackward(_ value: Int) -> Int {
    return value - 1
}

func stepFunction(backward: Bool) -> (Int) ->Int {
    return backward ? stepBackward : stepForward(_:)
}
var initial = 3
let goToZero = stepFunction(backward: initial > 0)

while(initial != 0) {
    print(initial)
    initial = goToZero(initial)
}

//Nested Function
func chooseSetupFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(value: Int) -> Int { return value + 1}
    func stepBackward(value: Int) -> Int { return value - 1}
    return backward ? stepBackward : stepForward
}

var startNumber = 4
let towardsZero = chooseSetupFunction(backward: startNumber > 0)
while (startNumber != 0) {
    print(towardsZero)
    startNumber = towardsZero(startNumber)
}