//
//  LogoutAlertView.swift
//  experiment
//
//  Created by Bhoma Ram on 04/01/25.
//

import UIKit

class LogoutAlertView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        print("InitializationTime:: ")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("InitializationTime:: ")
        commonInit()
    }
    
    deinit {
        print("ViewHierarchyRemoved")
    }
    
    private func commonInit()  {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "LogoutAlertView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        self.addSubview(view)
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        removeFromSuperview()
    }
    
    func show(superView: UIView)  {
        superView.addSubview(self)
    }
}
