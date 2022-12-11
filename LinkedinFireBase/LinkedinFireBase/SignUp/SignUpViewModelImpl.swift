//
//  SignUpViewModelImpl.swift
//  LinkedinFireBase
//
//  Created by SaniyeTOY on 11.12.2022.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewModelImpl: SignUpViewModel{
    
    weak var delegate: SignUpViewModelDelegate?
    var  displayLogin: SignUpViewModelDisplayDelegate?
    
    init() {
        
    }
    
    func createUser(firstName: String , lastName: String ,email: String , password: String , completion completionBlock: @escaping (_ success: Bool) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
            if (authResult?.user) != nil {
                // save user in fireBase Database
                
                    var ref: DocumentReference? = nil
                    let db = Firestore.firestore()
                    ref = db.collection("users").addDocument(data: [
                        "firstName": "firstName" as String ,
                        "lastName": "lastName" as String,
                        "email": "email" as String
                    ]) { error in
                        if let error = error {
                            
                            print("Error adding document: \(error)")
                        } else {
                            
                            print("Document added with ID: \(ref!.documentID)")
                        }
                    }
                
                completionBlock(true)
                
            } else {
                completionBlock(false)
            }
        }
    }
}

