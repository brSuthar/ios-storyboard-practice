//
//  OnboardViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 30/12/24.
//

import UIKit

class OnboardViewController: UIViewController {
    @IBOutlet weak var forget_password: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() -> Void {
        forget_password.isUserInteractionEnabled = true;
        let tapGesture = UIGestureRecognizer(target: self, action: #selector(forgetTapped))
        forget_password.addGestureRecognizer(tapGesture);
        
//        navigationController?.navigationBar.isHidden = true
        navigationController?.isNavigationBarHidden = true;
    }
    
    @objc func forgetTapped() -> Void {
        //forget passward tap
    }
}
