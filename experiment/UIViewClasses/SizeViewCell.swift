//
//  SizeViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 07/01/25.
//

import UIKit

class SizeViewCell: UICollectionViewCell {
    @IBOutlet weak var size: UILabel!
    
    public static let id: String = "SizeViewCell"
    
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
    
    func configure(with size: String) {
        self.size.text = size
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: SizeViewCell.id, bundle: nil)
    }

    
    func setUI() {
        layer.cornerRadius = 12
        backgroundColor = UIColor.zumthor
    }
}
