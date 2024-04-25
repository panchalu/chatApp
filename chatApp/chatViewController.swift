//
//  chatViewController.swift
//  chatApp
//
//  Created by Teacher on 16/04/24.
//

import UIKit
import Firebase

class chatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Hello chat messanger"

        navigationItem.hidesBackButton = true
    }
    

    
    @IBAction func LogoutPress(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
        
    }
    
}
