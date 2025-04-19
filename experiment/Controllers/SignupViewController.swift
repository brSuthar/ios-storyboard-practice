//
//  SignupViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 11/01/25.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    private var status = false {
        didSet {
            image.image = UIImage(named: status ? "selected-checked-ic" : "uncheck-ic")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClick(_ sender: UIButton) {
        status = !status
    }
}
