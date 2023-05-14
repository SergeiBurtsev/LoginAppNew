
import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "User",
            password: "Password",
            person: Person(
                name: "Tim",
                surname: "Cook",
                company: "Apple",
                department: "Managment",
                position: "CEO")
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let position: String
}
