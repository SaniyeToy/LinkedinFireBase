//
//  LoginViewController.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    var viewModel: LoginViewModelImpl?
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var contiuneWithFaceBookButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.topItem?.title = ""
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        login()
    }
    
    @IBAction func contiuneFaceBookTapped(_ sender: Any) {
        
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        let builder = SignUpBuilder()
        builder.build().modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(builder.build(), animated: true)
    }
    
    func login(){
        
        guard let email = emailTextField.text,
              !email.isEmpty else {
            Alert.alert(title: "Please enter email", message: "Invalid email")
            return
        }
        
        guard let password = passwordTextField.text,
              !password.isEmpty else {
            Alert.alert(title: "Please enter password", message: "Invalid password")
            return
        }
        
    }
}

//MARK: LoginViewModelDisplayDelegate
extension LoginViewController: LoginViewModelDisplayDelegate {
    func alert(message: String) {
        Alert.alert(title: "ERROR", message: message)
    }
    
    func pop(){
        self.navigationController?.popViewController(animated: false)
    }
}
