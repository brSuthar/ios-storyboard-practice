//
//  PerfectViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 31/12/24.
//

import UIKit

class PerfectViewCell: UICollectionViewCell {
    public static let id: String = "PerfectViewCell"
    
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
    
    func configure() -> Void {
        
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
    func setUI() -> Void {
        layer.backgroundColor = UIColor.selago.cgColor
        layer.cornerRadius = 16
    }
}
