//
//  PersonViewModel.swift
//  Mvvm-Assignment
//
//  Created by Haneen on 04/11/1444 AH.
//

import Foundation
class PersonViewModel : ObservableObject {
    @Published var count = 0
    @Published var People : [Person] = []
    
    init(){
        addPerson()
    }
    func addPerson(){
        People = personDate
    }
    func shuffleOrder(){
        People.shuffle()
    }
    func reverseOrder(){
        People.reverse()
    }
    func removeLastPerson(){
        People.removeLast()
    }
    func removeFirsPerson(){
        People.removeFirst()
    }
    let personDate = [
    Person(name: "Haneen", email: "hhh@gmail.com", phoneNumber: "056787878878"),
    Person(name: "lina", email: "lina@gmail.com", phoneNumber: "0567343332"),
    Person(name: "Majed", email: "majed@gmail.com", phoneNumber: "0543216788"),
    Person(name: "Mohammad", email: "mohammad@gmail.com", phoneNumber: "054212312"),
    Person(name: "Ammar", email: "ammar@gmail.com", phoneNumber: "098643222"),]
}
