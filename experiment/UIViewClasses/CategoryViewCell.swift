//
//  CategoryViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 12/01/25.
//

import UIKit

class CategoryViewCell: UICollectionViewCell {
    public static let id: String = "CategoryViewCell"
    
    @IBOutlet weak var action_view: UIButton!
    @IBOutlet weak var bg_view: ViewStyle!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI();
    }
    
    private func setUI() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowRadius = 5
        layer.masksToBounds = false
    }
    
    func configure() {
        
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
    @IBAction func onClick(_ sender: Any) {
        
    }
    
}
