//
//  SubscriptionViewCellViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 29/12/24.
//

import UIKit

class SubscriptionViewCellViewController: UIViewController {
    @IBOutlet weak var offer_view: UIView!
    @IBOutlet weak var collection_view: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.navigationBar.isHidden = true;
        navigationController?.isNavigationBarHidden = true;
        setUI()
    }
    
    private func setUI() -> Void {
        offer_view.layer.cornerRadius = 16;
        collection_view.register(PremiumViewCell.nib(), forCellWithReuseIdentifier: PremiumViewCell.name)
        collection_view.dataSource = self
        collection_view.delegate = self;
        
        let layout = UICollectionViewFlowLayout();
        layout.minimumLineSpacing = 12;
        collection_view.collectionViewLayout = layout;
    }
    
}


extension SubscriptionViewCellViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PremiumViewCell.name, for: indexPath)
        
        return cell;
    }
}

extension SubscriptionViewCellViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collection_view.frame.width, height: 67)
    }
}
