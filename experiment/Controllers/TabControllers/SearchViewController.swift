//
//  SearchViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 05/01/25.
//

import UIKit

let search_data: [String] = ["Smartphone",
                            "Laptop",
                            "Headphones",
                            "Smartwatch",
                            "Tablet",
                            "Wireless Mouse",
                            "Gaming Keyboard",
                            "Bluetooth Speaker",
                            "External Hard Drive",
                            "Fitness Tracker",
                            "Digital Camera",
                            "Portable Charger",
                            "Smart TV",
                            "VR Headset",
                            "Drone",
                            "E-Reader",
                            "Streaming Stick",
                            "Desktop PC",
                            "Monitor",
                            "Gaming Chair",
                            "Electric Scooter",
                            "Air Purifier",
                            "Coffee Maker",
                            "Microwave Oven",
                            "Refrigerator"]

class SearchViewController: UIViewController {
    @IBOutlet weak var search_collect: UICollectionView!
    @IBOutlet weak var search_input: UITextField!
    
    @IBOutlet weak var result_collection: UICollectionView!
    @IBOutlet weak var hide_view: UIView!
    
    private var search: [String] = search_data {
        didSet {
            result_collection.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI();
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        let touch = touches.first!
        let location = touch.location(in: self.view)
        
        if !search_input.frame.contains(location) {
            search_input.resignFirstResponder()
        }
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
        
        result_collection.dataSource = self
        result_collection.delegate = self
        result_collection.register(ResultViewCell.nib(), forCellWithReuseIdentifier: ResultViewCell.id)
        result_collection.showsVerticalScrollIndicator = false
        
        let resultLayout = UICollectionViewFlowLayout()
        resultLayout.minimumLineSpacing = 0
        result_collection.collectionViewLayout = resultLayout
        
        search_input.returnKeyType = .done
        search_input.addTarget(self, action: #selector(onPressSearch), for: .editingDidEndOnExit)
    }
    
    @objc func onPressSearch() {
        search_input.resignFirstResponder()
    }
    
    @IBAction func onFocus(_ sender: UITextField) {
        hide_view.isHidden = false
        search = search_data
    }
    
    @IBAction func onBlur(_ sender: UITextField) {
        hide_view.isHidden = true
    }
    
    @IBAction func onTextChange(_ sender: UITextField) {
        guard let text = sender.text else {
            return;
        }
        
        if (text == "") {
            search = search_data
            return;
        }
        
        search = search_data.filter() {
            return $0.localizedCaseInsensitiveContains(text)
        }
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height, right: 0.0)
            result_collection.contentInset = contentInsets
            result_collection.scrollIndicatorInsets = contentInsets
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        let contentInsets = UIEdgeInsets.zero
        result_collection.contentInset = contentInsets
        result_collection.scrollIndicatorInsets = contentInsets
    }
}


extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == search_collect) {
            return 10
        }
        if(collectionView == result_collection){
            return search.count
        }
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == search_collect) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchViewCell.id, for: indexPath) as! SearchViewCell
            return cell
        }
        if(collectionView == result_collection){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResultViewCell.id, for: indexPath) as! ResultViewCell
            cell.configure(with: search[indexPath.row])
            return cell
        }
        
        return UICCollectionViewCell();
    }
}

extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(collectionView == search_collect) {
            return CGSize(width: (collectionView.frame.width - 12) / 2, height: 189)
        }
        if(collectionView == result_collection){
            return CGSize(width: collectionView.frame.width, height: 52)
        }
        return CGSize()
    }
}
