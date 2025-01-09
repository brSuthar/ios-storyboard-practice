//
//  LoginViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 14/12/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var password: UIInputField!
    @IBOutlet weak var email: UIInputField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = ""
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
    }
    
}
