//
//  RulesViewController.swift
//  Enigma
//
//  Created by Devang Patel on 16/09/19.
//  Copyright © 2019 IEEE-VIT. All rights reserved.
//

import UIKit

class RulesViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var rulesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

//MARK: - Extensions

extension RulesViewController: UITableViewDataSource,UITableViewDelegate {
    
     //MARK: - Table View datasource Method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rules.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = rulesTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! rulesTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor(ciColor: .black)
        headerView.tintColor = .black
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
}