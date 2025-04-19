//
//  ResultViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 11/01/25.
//

import UIKit

class ResultViewCell: UICollectionViewCell {
    public static let id: String = "ResultViewCell"

    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with text: String)  {
        title.text = text
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: id, bundle: nil)
    }

}
