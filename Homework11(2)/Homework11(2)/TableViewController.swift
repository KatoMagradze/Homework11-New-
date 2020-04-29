//
//  TableViewController.swift
//  Homework11(2)
//
//  Created by Kato on 4/29/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    var finalInfo: [Info] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    

}


extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finalInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_identifier", for: indexPath) as! CustomTableViewCell
        
        
        cell.firstNameLabel.text = finalInfo[indexPath.row].firstName
        cell.lastNameLabel.text = finalInfo[indexPath.row].lastName
        cell.emailLabel.text = finalInfo[indexPath.row].email
        cell.genderLabel.text = finalInfo[indexPath.row].gender
        
        return cell
    }
}
