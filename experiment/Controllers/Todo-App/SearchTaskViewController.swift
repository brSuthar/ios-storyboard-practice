//
//  SearchTaskViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 20/01/25.
//

import UIKit

class SearchTaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
