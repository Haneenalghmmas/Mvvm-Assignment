//
//  Person.swift
//  Mvvm-Assignment
//
//  Created by Haneen on 04/11/1444 AH.
//

import Foundation
struct Person : Identifiable {
    var id = UUID()
    var name : String
    var email : String
    var phoneNumber : String
}
