//
//  OptionViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 08/01/25.
//

import UIKit

class OptionViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    public static let id: String = "OptionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }
    
    func configire(with text: String) {
        title.text = text
    }
    
}
