//
//  PersonalizeViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 28/12/24.
//

import UIKit

class PersonalizeViewCell: UICollectionViewCell {
    public static let name: String = "PersonalizeViewCell"
    
    @IBOutlet weak var title: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    func setUI() -> Void {
        layer.cornerRadius = 8
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.lightGray.cgColor
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with text: String) -> Void {
        title.text = text;
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: "PersonalizeViewCell", bundle: nil)
    }

}
