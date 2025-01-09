//
//  ExploreViewControllver.swift
//  experiment
//
//  Created by Bhoma Ram on 31/12/24.
//

import UIKit

class ExploreViewControllver: UIViewController {
    @IBOutlet weak var perfect_view: UICollectionView!
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var event_view:
    
    UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true;
    }

    func setUI() -> Void {
        perfect_view.delegate = self
        perfect_view.dataSource = self
        perfect_view.register(PerfectViewCell.nib(), forCellWithReuseIdentifier: PerfectViewCell.id)
        perfect_view.showsHorizontalScrollIndicator = false
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 12
        perfect_view.collectionViewLayout = layout;
        
        scrollview.showsVerticalScrollIndicator = false
        
        event_view.delegate = self
        event_view.dataSource = self
        event_view.register(EventViewCell.nib(), forCellWithReuseIdentifier: EventViewCell.id)
        event_view.showsVerticalScrollIndicator = false
        let eventLayout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 12
        event_view.collectionViewLayout = eventLayout;
        
    }
}

extension ExploreViewControllver: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == perfect_view) {
            return 10
        } else if(collectionView == event_view) {
            return 3
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == perfect_view) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PerfectViewCell.id, for: indexPath) as! PerfectViewCell;
            
            return cell;
        }else if(collectionView == event_view) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EventViewCell.id, for: indexPath) as! EventViewCell;
            
            return cell;
        }
        
        return UICollectionViewCell();
    }
}

extension ExploreViewControllver: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(collectionView == perfect_view) {
            return CGSize(width: 200, height: collectionView.frame.height)
        }else if(collectionView == event_view) {
            return CGSize(width: collectionView.frame.width, height: 69)
        }
        return CGSize()
    }
}
