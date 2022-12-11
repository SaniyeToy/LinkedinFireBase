//
//  LoginBuilder.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import Foundation
import UIKit

class LoginBuilder {
    private let delegate: LoginViewModelDelegate
    init(delegate: LoginViewModelDelegate) {
        self.delegate = delegate
    }
    
    func build() -> LoginViewController {
        let viewController = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "Login") as! LoginViewController
        viewController.viewModel = LoginViewModelImpl()
        viewController.viewModel?.displayLogin = viewController
        return viewController
    }
}
