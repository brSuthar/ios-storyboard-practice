//
//  CodeCollectionViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 31/12/24.
//

import UIKit

class CodeCollectionViewCell: UICollectionViewCell {
    public static let id: String = "CodeCollectionViewCell"
    
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
    
    func configure(with count: String) -> Void {
        
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }

    func setUI() -> Void {
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.stormGray.cgColor
    }
}
