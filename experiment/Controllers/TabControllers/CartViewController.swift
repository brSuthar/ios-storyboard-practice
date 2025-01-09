//
//  CartViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 01/01/25.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var table_view: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    private func setUI() {
        
        table_view.delegate = self
        table_view.dataSource = self
        table_view.register(CartViewCell.nib(), forCellReuseIdentifier: CartViewCell.id)
        table_view.allowsSelection = false
        table_view.showsVerticalScrollIndicator = false
    }
}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CartViewCell.id, for: indexPath) as! CartViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.separatorInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
    }
}
