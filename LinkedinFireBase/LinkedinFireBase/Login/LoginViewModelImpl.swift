//
//  LoginViewModelImpl.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewModelImpl: LoginViewModel{
    
    weak var delegate: LoginViewModelDelegate?
    var  displayLogin: LoginViewModelDisplayDelegate?
    
    init() {
        
    }
    
    func logIn(_ email:String, _ password:String , completion :@escaping(Bool) -> Void){
        
        Auth.auth().signIn(withEmail: email, password: password) {(result, error) in
            if let error = error {
                print(error)
                completion(false)
            } else {
                completion(true)
            }
        }
    }
}

