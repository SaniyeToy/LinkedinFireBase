//
//  SignUpViewModel.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import Foundation

protocol SignUpViewModel{
    func createUser(firstName: String , lastName: String ,email: String , password: String ,completion:@escaping(_ sucess : Bool)->Void)
    var delegate: SignUpViewModelDelegate? { get set }
}

protocol SignUpViewModelDelegate: AnyObject {
   
}

protocol SignUpViewModelDisplayDelegate: AnyObject {
    func pop()
    func alert(message: String)
}

