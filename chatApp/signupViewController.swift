//
//  signupViewController.swift
//  chatApp
//
//  Created by Teacher on 04/04/24.
//

import UIKit
import Firebase


class signupViewController: UIViewController {
    
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            Auth.auth().createUser(withEmail: email , password: password ) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    
                } else {
                    
                    //navigate to chat controller
                    
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
                }
                
            }
            
            
        }
        
        
    }

