//
//  CartViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 01/01/25.
//

import UIKit

class CartViewCell: UITableViewCell {
    public static let id: String = "CartViewCell"
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI();
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure() -> Void {
        
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
    func setUI() {
        img.layer.cornerRadius = 16
    }
}
