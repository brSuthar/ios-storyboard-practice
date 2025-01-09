//
//  SocialRound.swift
//  experiment
//
//  Created by Bhoma Ram on 30/12/24.
//

import UIKit

class SocialRound: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI();
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI();
    }

    func setUI() -> Void {
        layer.cornerRadius = 20
    }
}
