//
//  ProfileViewController.swift
//  experiment
//
//  Created by Bhoma Ram on 04/01/25.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var option_table: UITableView!
    
    private let options: [String] = ["Saved Messages", "Recent Calls", "Devices", "Notifications", "Appearance", "Language", "Privacy & Security", "Storage"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        option_table.dataSource = self
        option_table.delegate = self
        option_table.showsVerticalScrollIndicator = false
        option_table.register(OptionViewCell.nib(), forCellReuseIdentifier: OptionViewCell.id)
        
        let headerView = OptionHeaderView()
        headerView.frame = CGRect(x: 0, y: 0, width: option_table.frame.width, height: 153)
        option_table.tableHeaderView = headerView
    }
    
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OptionViewCell.id, for: indexPath )as! OptionViewCell
        cell.configire(with: options[indexPath.row])
        return cell;
    }
    
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = OptionHeaderView.instantiate()
//        return header;
//    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 120
//    }
//    
}



