//
//  VerifyViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 31/12/24.
//

import UIKit

class VerifyViewController: UIViewController, UICollectionViewDelegate {
    @IBOutlet weak var editfield: UIInputField!
    @IBOutlet weak var code_view: UICollectionView!
    
    private var text: String = "" {
        didSet {
            self.updateCollectionCell(at: IndexPath(row: text.count, section: 0))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
    
    private func setUI() -> Void {
//        navigationController?.navigationBar.isHidden = true
        navigationController?.isNavigationBarHidden = true;
        
        editfield.isHidden = true
        
        editfield.keyboardType = .numberPad
        
        code_view.delegate = self
        code_view.dataSource = self
        code_view.isScrollEnabled = false
        code_view.register(CodeCollectionViewCell.nib(), forCellWithReuseIdentifier: CodeCollectionViewCell.id)
        let layout = UICollectionViewFlowLayout();
        layout.minimumLineSpacing = 8
        layout.scrollDirection = .horizontal
        code_view.collectionViewLayout = layout;
        self.updateCollectionCell(at: IndexPath(row: text.count, section: 0))
    }
    
    @IBAction func onTapCode(_ sender: Any) {
        editfield.becomeFirstResponder()
    }
    
    @IBAction func onBegin(_ sender: UITextField) {
        text = sender.text ?? ""
    }
}

extension VerifyViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CodeCollectionViewCell.id, for: indexPath)
        return cell;
    }
    
    func updateCollectionCell(at indexPath: IndexPath) -> Void {
        guard let cell = code_view.cellForItem(at: indexPath) as? CodeCollectionViewCell else { return }
        
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.blueRibbon.cgColor
    }
    
}

extension VerifyViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 48, height: 48)
    }
}
