//
//  CityViewController.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class CityViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {

    @IBOutlet weak var CityTable: UITableView!
    
    var arrCity: [UIImage] = [UIImage(named: "img_amman")! , UIImage(named: "img_cairo")! ,UIImage(named: "img_riyadh")! , UIImage(named: "img_dubai")!]

    override func viewDidLoad() {
        super.viewDidLoad()

        CityTable.delegate = self
        CityTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityTableViewCell
        
        cell.cityimage.image = arrCity[indexPath.row]
        
        return cell
        
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let photo = arrCity[indexPath.row]
        
        let photoRatio = photo.size.width / photo.size.height
        
        return tableView.frame.width / photoRatio
        
    }
    
}
