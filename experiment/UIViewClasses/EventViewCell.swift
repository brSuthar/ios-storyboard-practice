//
//  EventViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 31/12/24.
//

import UIKit

class EventViewCell: UICollectionViewCell {
    public static let id: String = "EventViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI();
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI();
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure() -> Void {
        
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
    func setUI() {
        layer.backgroundColor = UIColor.selago.cgColor
        layer.cornerRadius = 16
    }

}
