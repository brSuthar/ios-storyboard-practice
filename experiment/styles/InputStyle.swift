//
//  InputStyle.swift
//  experiment
//
//  Created by Bhoma Ram on 05/01/25.
//

import UIKit

class InputStyle: UITextField {
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var cornerClips: Bool = false {
        didSet {
            self.clipsToBounds = cornerClips;
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
}
