//
//  OptionHeaderView.swift
//  experiment
//
//  Created by Bhoma Ram on 08/01/25.
//

import UIKit

class OptionHeaderView: UIView {
    @IBOutlet weak var image_view: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit();
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit();
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func commitInit() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "OptionHeaderView", bundle: bundle)
        let contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(contentView)
        self.setUI()
    }
    
    private func setUI() {
        image_view.layer.cornerRadius = 16
    }
}
