//
//  HomeCollectionViewCell.swift
//  experiment
//
//  Created by Bhoma Ram on 27/12/24.
//

import UIKit

class UICCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var text: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setUI()
    }
    
    func configure(with post: Posts) -> Void {
        text.text = post.body
    }
    
    func setUI() -> Void {
        layer.cornerRadius = 8
        backgroundColor = UIColor.lightGray
    }
}
