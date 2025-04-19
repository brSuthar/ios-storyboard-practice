//
//  WelcomeViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 14/12/24.
//

import UIKit
import AVFoundation



class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func onAction(_ sender: Any) {
        let board = UIStoryboard(name: "Main", bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "LetsViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

