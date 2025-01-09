//
//  ColorViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 08/01/25.
//

import UIKit

class ColorViewCell: UICollectionViewCell {
    @IBOutlet weak var color_view: UIView!
    
    public static let id: String = "ColorViewCell"
    
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
    
    func configure(with color: UIColor) {
        self.color_view.backgroundColor = color
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: ColorViewCell.id, bundle: nil)
    }

    
    func setUI() {
        layer.cornerRadius = 16
    }

}
