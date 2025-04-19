//
//  CircleViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 19/01/25.
//

import UIKit

class CircleViewCell: UICollectionViewCell {
    public static let id: String = "CircleViewCell"
    @IBOutlet weak var bg_view: UIView!
    @IBOutlet weak var plus_ic: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI();
    }
    
    public func config(with color: UIColor) {
        bg_view.backgroundColor = color
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
    private func setUI() {
        bg_view.layer.cornerRadius = 14
    }

}

