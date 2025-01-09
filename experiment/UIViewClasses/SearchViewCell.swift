//
//  SearchViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 07/01/25.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
    public static let id: String = "SearchViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure() {
        
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: SearchViewCell.id, bundle: nil)
    }

    
    func setUI() {
        layer.cornerRadius = 16
    }
}
