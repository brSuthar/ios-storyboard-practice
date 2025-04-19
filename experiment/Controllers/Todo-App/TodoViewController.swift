//
//  TodoViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 16/01/25.
//

import UIKit

class TodoViewController: UIViewController {
    @IBOutlet weak var todo_collection: UICollectionView!
    @IBOutlet weak var bg_view: ViewStyle!
    @IBOutlet weak var circle_collection: UICollectionView!
    private let colors: [UIColor] = [UIColor.dodgerBlue, UIColor.revolver, UIColor.cornflowerBlue, UIColor.portage, UIColor.stormGray, UIColor.dodgerBlue]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
    
    private func setUI() {
        todo_collection.delegate = self
        todo_collection.dataSource = self
        todo_collection.showsVerticalScrollIndicator = false
        todo_collection.isScrollEnabled = false
        todo_collection.register(TodoViewCell.nib(), forCellWithReuseIdentifier: TodoViewCell.id)
        let layout = UICollectionViewFlowLayout()
        todo_collection.collectionViewLayout = layout;
        
        bg_view.transform = CGAffineTransform(rotationAngle: 0.06)
        
        circle_collection.delegate = self
        circle_collection.delegate = self
        circle_collection.dataSource = self
        circle_collection.showsVerticalScrollIndicator = false
        circle_collection.isScrollEnabled = false
        circle_collection.register(CircleViewCell.nib(), forCellWithReuseIdentifier: CircleViewCell.id)
        let circleLayout = UICollectionViewFlowLayout()
        circleLayout.minimumLineSpacing = -10
        circle_collection.collectionViewLayout = circleLayout;
    }

}

extension TodoViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == todo_collection) {
            return 4
        }
        if(collectionView == circle_collection) {
            return colors.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == todo_collection) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TodoViewCell.id, for: indexPath) as! TodoViewCell
            return cell
        }
        if(collectionView == circle_collection) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CircleViewCell.id, for: indexPath) as! CircleViewCell
            cell.config(with: colors[indexPath.row])
            cell.plus_ic.isHidden = indexPath.row != (colors.count - 1)
            return cell
        }
        return UICCollectionViewCell()
    }
}

extension TodoViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(collectionView == todo_collection) {
            return CGSize(width: collectionView.frame.width, height: 83)
        }
        if(collectionView == circle_collection) {
            return CGSize(width: collectionView.frame.width, height: 28)
        }
        return CGSize(width: 0, height: 0)
    }
}
