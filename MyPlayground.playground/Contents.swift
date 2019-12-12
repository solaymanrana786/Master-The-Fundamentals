import UIKit

class Person {
    var name = ""
  
    init(_ name: String) {
        self.name = name
    }

}
 
class Employee: Person {
    var salary = 0
    var role = "iOS_Developer"
    
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

let myPerson = Person("Solayman Rana")
print(myPerson.name)

let anotherEmployee = Employee("Joe")
print(anotherEmployee.name)
