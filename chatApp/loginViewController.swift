//
//  loginViewController.swift
//  chatApp
//
//  Created by Teacher on 04/04/24.
//

import UIKit
import Firebase

class loginViewController: UIViewController {
    
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginpressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text ,let password = passwordTextfield.text {
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print("kindly enter valid email address and password")
                } else {
                    
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
                
                
            }
            
        }
    }
}


