//
//  CategoryViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 12/01/25.
//

import UIKit

class CategoryViewController: UIViewController {
    @IBOutlet weak var category_view: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        category_view.dataSource = self
        category_view.delegate = self
        category_view.showsVerticalScrollIndicator = false
        category_view.register(CategoryViewCell.nib(), forCellWithReuseIdentifier: CategoryViewCell.id)
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 12
        layout.sectionInset = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        category_view.collectionViewLayout = layout;
    }
}

extension CategoryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryViewCell.id, for: indexPath) as! CategoryViewCell
        cell.action_view.addTarget(self, action: #selector(onNavigationAction), for: .touchUpInside)
        return cell;
    }
    
    @objc func onNavigationAction() {
        Permission.shared().checkCameraPermission() {granted in
            switch (granted) {
            case .granted:
                self.navigateToCamera()
            case .restricted: break
            }
        }
    }
    
    func navigateToCamera() {
        let board = UIStoryboard(name: "Main", bundle: nil)
        let controller = board.instantiateViewController(withIdentifier: "LetsViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

extension CategoryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 60) / 2, height: 62)
    }
}
