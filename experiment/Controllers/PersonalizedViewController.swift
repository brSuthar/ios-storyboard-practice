//
//  PersonalizedViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 28/12/24.
//

import UIKit

class PersonalizedViewController: UIViewController, UICollectionViewDelegate {
    @IBOutlet weak var collection_view: UICollectionView!
    let data: [String] = ["User Interface", "User Experience", "User Research", "UX Writing", "User Testing", "Service Design", "Strategy", "Design Systems"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.isHidden = true;
        navigationController?.isNavigationBarHidden = true;
        self.setCollectionView();
    }
    
    private func setCollectionView() -> Void {
        collection_view.dataSource = self
        collection_view.delegate = self
        collection_view.register(PersonalizeViewCell.nib(), forCellWithReuseIdentifier: PersonalizeViewCell.name)
        let layout = UICollectionViewFlowLayout();
        layout.minimumLineSpacing = 8
        collection_view.collectionViewLayout = layout
    }


}

extension PersonalizedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PersonalizeViewCell.name, for: indexPath) as! PersonalizeViewCell
        
        cell.configure(with: data[indexPath.row])
        
        return cell;
    }
}

extension PersonalizedViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 48)
    }
}
