//
//  UsersViewController.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/14/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
   

    @IBOutlet weak var UsersTable: UITableView!
    @IBOutlet weak var NameTxt: UITextField!
    
    var arrUsers = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UsersTable.delegate = self
        UsersTable.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        
        cell.textLabel?.text = arrUsers[indexPath.row]
        
        return cell
    }
    
    
    
    @IBAction func btnEdit(_ sender: Any) {
        UsersTable.isEditing = !UsersTable.isEditing
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
       return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrUsers.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = UIContextualAction(style: .destructive, title: "")
        {(action , view , fi) in
            
            self.arrUsers.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            
           fi(true)
        }
        
        let fav = UIContextualAction(style: .normal, title: "")
        {(_,_,_) in
            
            print("Add To Favourite")
        }
        
        delete.image = UIImage(systemName: "trash")
        fav.image = UIImage(systemName: "heart")
        
        return UISwipeActionsConfiguration(actions: [delete, fav])
    }
    
    

    
    
    @IBAction func btnAdd(_ sender: Any) {
        
        if let userName = NameTxt.text{
            
            arrUsers.append(userName)
            let position = IndexPath(row: arrUsers.count - 1, section: 0)
            UsersTable.beginUpdates()
            UsersTable.insertRows(at: [position], with: .automatic)
            UsersTable.endUpdates()
            
            NameTxt.text = ""
        }
    }
}
