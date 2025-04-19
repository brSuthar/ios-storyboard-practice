//
//  TodoViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 17/01/25.
//

import UIKit

class TodoViewCell: UICollectionViewCell {
    public static let id: String = "TodoViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setUI()
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
    func configure() {
       //code
    }
    
    func setUI() {
        layer.cornerRadius = 12
    }
}
