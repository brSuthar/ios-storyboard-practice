//
//  DetailViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 07/01/25.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var size_collection: UICollectionView!
    @IBOutlet weak var color_collection: UICollectionView!
    
    private let size: [String] = ["XS", "S", "M", "L", "XL"]
    private let colors: [UIColor] = [UIColor.black, UIColor.darkGray, UIColor.red, UIColor.amaranth, UIColor.zumthor]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        size_collection.dataSource = self
        size_collection.delegate = self
        size_collection.showsHorizontalScrollIndicator = false
        size_collection.register(SizeViewCell.nib(), forCellWithReuseIdentifier: SizeViewCell.id)
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        size_collection.collectionViewLayout = layout
        
        color_collection.dataSource = self
        color_collection.delegate = self
        color_collection.showsHorizontalScrollIndicator = false
        color_collection.register(ColorViewCell.nib(), forCellWithReuseIdentifier: ColorViewCell.id)
        let colorLayout = UICollectionViewFlowLayout()
        colorLayout.scrollDirection = .horizontal
        color_collection.collectionViewLayout = colorLayout
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true;
    }
}

extension DetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == size_collection) {
            return size.count
        }else if(collectionView == color_collection) {
            return colors.count
        }
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == size_collection) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SizeViewCell.id, for: indexPath) as! SizeViewCell
            cell.configure(with: size[indexPath.row])
            return cell
        }else if(collectionView == color_collection) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ColorViewCell.id, for: indexPath) as! ColorViewCell
            cell.configure(with: colors[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell();
    }
}

extension DetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if (collectionView == size_collection) {
            let sizeText = size[indexPath.item]
            let textWidth = sizeText.size(withAttributes: [.font: UIFont.systemFont(ofSize: 16)]).width
            
            return CGSize(width: (textWidth + 20), height: collectionView.frame.height)
        } else if(collectionView == color_collection) {
            return CGSize(width: 32, height: 32)
        }
        
        return CGSize(width: 0, height: 0)
    }
}
