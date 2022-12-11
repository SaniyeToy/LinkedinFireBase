//
//  SignUpViewController.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import Foundation
import UIKit


class SignUpViewController: UIViewController {
    var viewModel: SignUpViewModelImpl?
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var joinNowButton: UIButton!
    @IBOutlet weak var faceBookButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    override func viewDidLoad() {
        self.navigationController?.navigationBar.topItem?.title = ""
        super.viewDidLoad()
    }
    
    @IBAction func facebookTapped(_ sender: Any) {
    }
    
    @IBAction func joinNowTapped(_ sender: Any) {
        createUser()
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
    }
    
    func createUser(){
//        guard let firstName = firstNameTextField.text,
//              !firstName.isEmpty else {
//                  interactor?.alert(title: "Please enter a first name", message: "Invalid First Name")
//                  return
//              }
//
//        guard let lastName = lastNameTextField.text,
//              !lastName.isEmpty else {
//                  interactor?.alert(title: "Please enter a last name", message: "Invalid Last Name")
//                  return
//              }
//
//        guard let email = emailTextField.text,
//              !email.isEmpty else {
//                  interactor?.alert(title: "Please enter email", message: "Invalid email")
//                  return
//              }
//
//        guard let password = passwordTextField.text,
//              !password.isEmpty else {
//                  interactor?.alert(title: "Please enter password", message: "Invalid password")
//                  return
//              }
        
      //  register(firstName: firstName , lastName: lastName , email: email , password: password)
        
        }
    
    func register(firstName: String , lastName: String , email: String , password: String){

//        viewModel?.registerUser(firstName: firstName , lastName: lastName , email: email , password: password) {[weak self] (success) in
//            self?.getResponse(success)
//        }
    }
}

//MARK: LoginViewModelDisplayDelegate
extension SignUpViewController: SignUpViewModelDisplayDelegate {
    func alert(message: String) {
        Alert.alert(title: "ERROR", message: message)
    }
    
    func pop(){
        self.navigationController?.popViewController(animated: false)
    }
}
