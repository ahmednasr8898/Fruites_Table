//
//  ContactsViewController.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var ContactsTable: UITableView!
    
    var arrSection = ["A" , "S" , "N" , "M"]
    var arrRows = [["Ahmed" , "Amir" , "Ayman"] , ["Sami"] , ["Nasr" , "Nader"] , ["Mohamed" , "Montaser" , "Mahmoued" , "Moaaz"]]
    
    override func viewDidLoad() {
     super.viewDidLoad()
  
        ContactsTable.delegate = self
        ContactsTable.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRows[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        
        cell.textLabel?.text = arrRows[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrSection[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "End section \(arrSection[section])"
    }

}
