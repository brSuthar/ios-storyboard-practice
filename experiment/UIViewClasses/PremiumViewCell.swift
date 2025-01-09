//
//  PremiumViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 29/12/24.
//

import UIKit

class PremiumViewCell: UICollectionViewCell {
    public static let name = "PremiumViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func setUI() -> Void {
        layer.cornerRadius = 16
        layer.borderWidth = 0.6
        layer.borderColor = UIColor.lightGray.cgColor
    }
    
    public func configure(with data: String) -> Void {
        
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: name, bundle: nil)
    }
}
