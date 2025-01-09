//
//  UICircleView.swift
//  experiment
//
//  Created by Bhoma Ram on 28/12/24.
//

import UIKit

class UICircleView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    func setUI() -> Void {
        layer.cornerRadius = 4;
    }
}
