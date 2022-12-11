//
//  SignUpBuilder.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import Foundation
import UIKit

class SignUpBuilder {
   // private let delegate: SignUpViewModelDelegate?
    
    func build() -> SignUpViewController {
        let viewController = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: "SignUp") as! SignUpViewController
        viewController.viewModel = SignUpViewModelImpl()
        viewController.viewModel?.displayLogin = viewController
        return viewController
    }
}
