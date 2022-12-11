//
//  LoginViewModel.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import Foundation

protocol LoginViewModel{
    func logIn(_ email:String, _ password:String , completion :@escaping(Bool) -> Void)
    var delegate: LoginViewModelDelegate? { get set }
}

protocol LoginViewModelDelegate: AnyObject {
   
}

protocol LoginViewModelDisplayDelegate: AnyObject {
    func pop()
    func alert(message: String)
}

