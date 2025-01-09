//
//  UIInputField.swift
//  experiment
//
//  Created by Bhoma Ram on 20/12/24.
//

import UIKit

class UIInputField: UITextField {
    override func draw(_ rect: CGRect) {
        layer.borderWidth = 1
        layer.borderColor = UIColor.transparent.cgColor
        textColor = .black
    }
}

class UISearchInput: UITextField {
    override func draw(_ rect: CGRect) {
        layer.borderWidth = 0
        layer.cornerRadius = 8
        backgroundColor = UIColor.red
    }
}
