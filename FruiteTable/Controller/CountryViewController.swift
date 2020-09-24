//
//  CountryViewController.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController , UITableViewDataSource {

    @IBOutlet weak var countryTable: UITableView!
    
    var arrCountry = ["Egypt" , "USA" , "Iraq" , "Yaman" , "Suirya"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countryTable.dataSource = self

        arrCountry.removeAll()
        
        if arrCountry.count == 0 {
            
            countryTable.isHidden = true
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCountry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        cell.textLabel?.text = arrCountry[indexPath.row]
        return cell
    }
}
