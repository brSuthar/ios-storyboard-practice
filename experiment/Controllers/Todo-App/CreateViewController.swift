//
//  CreateViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 19/01/25.
//

import UIKit

class CreateViewController: UIViewController {
    @IBOutlet weak var text_view: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text_view.layer.cornerRadius = 12
        text_view.showsVerticalScrollIndicator = false
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
