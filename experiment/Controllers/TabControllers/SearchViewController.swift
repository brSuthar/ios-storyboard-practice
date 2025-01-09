//
//  SearchViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 05/01/25.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var search_collect: UICollectionView!
    @IBOutlet weak var search_input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI();
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true;
    }
    
    func setUI() {
        let uiView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        let imageView = UIImageView(frame: CGRect(x: 12, y: 12, width: 20, height: 20))
        imageView.image = UIImage(named: "search-ic")
        uiView.addSubview(imageView)
        search_input.leftView = uiView
        search_input.leftViewMode = .always
        search_input.layer.masksToBounds = true
        
        search_collect.dataSource = self
        search_collect.delegate = self
        search_collect.register(SearchViewCell.nib(), forCellWithReuseIdentifier: SearchViewCell.id)
        search_collect.showsVerticalScrollIndicator = false
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 12
        layout.sectionInset = UIEdgeInsets(top: 16, left: 0, bottom: 16, right: 0)
        search_collect.collectionViewLayout = layout
    }
}


extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchViewCell.id, for: indexPath) as! SearchViewCell
        return cell
    }
}

extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 12) / 2, height: 189)
    }
}
