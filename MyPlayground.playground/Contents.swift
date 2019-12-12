import UIKit

class Person {
    var name = ""
    
    init() {

    }
    
    init(_ name: String) {
        self.name = name
    }

}
 
class Employee: Person {
    var salary = 0
    var role = ""
    override init(_ name: String){
        super.init(name)
        self.role = "iOS_Developer"
    }
    func doWork() {
        print("Hi my name is \(name) and I'm doing work")
        salary += 1
    }
}
 
class Manager: Employee {
    var teamSize = 5
    
    override func doWork() {
        super.doWork()
        
        print("I'm managing people")
        salary += 2
    }
    
    func firePeople() {
        print("I'm firing people")
    }
}

//let myPerson = Person("Solayman Rana")
//print(myPerson.name)

let anotherEmployee = Employee("Solayman Rana")
print(anotherEmployee.name)
print(anotherEmployee.role)

var myDic = [Int:String]()
myDic[1] = "Solayman"
myDic[2] = "Rana"
myDic[3] = "Walid"
myDic[4] = "Noban"
//print(myDic)
//
//for (key, value) in myDic {
//    print("\(key) is  \(value)")
//}


let key = [1,2,3,4,5,6,7,8]
let value = ["rana","helal","labib","noban","walid","ergbh ","wrlejgn","erh"]
var newDict = Dictionary(uniqueKeysWithValues: zip(key, value))
//print(newDict)
for (key, value) in newDict {
    print("\(key) is  \(value)")
}
newDict[43] = "tarasha"
newDict[420] = "bitisha"
print(newDict.isEmpty)
print(newDict)
for (key, value) in newDict {
    print("\(key) is  \(value)")
}
