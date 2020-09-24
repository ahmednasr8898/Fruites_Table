//
//  ViewController.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/12/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    
    @IBOutlet weak var NameTableView: UITableView!
    
    var arrName = ["Ahemd" , "Nasr" , "Said" , "Khalil" , "Saleh" , "Mohamed" , "Ansary"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameTableView.dataSource = self
        NameTableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell" , for: indexPath)
        
        cell.textLabel?.text = arrName[indexPath.row]
        return cell

    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       //print("Hello")
      //print(indexPath.row)
        print(arrName[indexPath.row])
    }
    
    



}

