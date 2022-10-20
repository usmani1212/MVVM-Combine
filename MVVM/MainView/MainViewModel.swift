//
//  MainViewModel.swift
//  MVVM
//
//  Created by Muhammad Usman on 17/10/2022.
//

import Foundation

final class MainViewModel {
    
    // USING OBSERVABLE OBJECT
    //    var userNameMessage: ObservableObject<String?> = ObservableObject(nil)
    //    var userEmailMessage: ObservableObject<String?> = ObservableObject(nil)
    
    
    // USING COMBINE
    @Published var userNameMessage: String?
    @Published var userEmailMessage: String?
    
    let user = UserModel(firstName: "Muhammad", lastName: "Usman" , age: 26, email: "usman@test.com", password: "abcdefg")
    
    func getUserName() {
        // OBSERVABLE OBJECT METHOD
        //          self.userNameMessage.value = "Hello, \(user.firstName) \(user.lastName)"
        
        //COMBINE METHOD
        self.userNameMessage = "Hello, \(user.firstName) \(user.lastName)"
    }
    
    func getUserEmail(){
        
        // OBSERVABLE OBJECT METHOD
        //        self.userEmailMessage.value = "your email is \(user.email)"
        
        //COMBINE METHOD
        self.userEmailMessage = "your email is \(user.email)"
    }
}
