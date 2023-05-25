//
//  ContentView.swift
//  Mvvm-Assignment
//
//  Created by Haneen on 04/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var ViewModel = PersonViewModel()
    @AppStorage ("User") var User : String = "John"
    var body: some View {
        
        VStack {
            Text("Welcome,\(User)")
            Button("Log in "){
                User = ""
            }
            ZStack (alignment: .bottomTrailing){
                ScrollView {
                    ForEach(ViewModel.People) { Person in
                        HStack {
                          
                            Text(Person.name)
                              .font(.title)
                              .fontWeight(.bold)
                          Spacer()
                          VStack(alignment: .trailing){
                              Text(Person.phoneNumber)
                              Text(Person.email)
                          }
                        }
                        .frame(height : 80)
                        .padding(12)
                    }
                }
            }
        }
        Menu("Menu".uppercased()){
            Button("Reverse", action : {ViewModel.reverseOrder()})
            Button("Shuffle", action : {ViewModel.shuffleOrder()})
            Button("Remove last ", action : {ViewModel.removeLastPerson()})
            Button("Remove first", action : {ViewModel.removeFirsPerson()})
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
