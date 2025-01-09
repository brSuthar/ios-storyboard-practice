//
//  UICButton.swift
//  experiment
//
//  Created by Bhoma Ram on 26/12/24.
//

import UIKit

class UICButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupProperties()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupProperties()
    }

    
    func setupProperties() -> Void {
        tintColor = UIColor.white
        backgroundColor = UIColor.blueRibbon
        layer.cornerRadius = 8
    }
}
