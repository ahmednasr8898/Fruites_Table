//
//  HomeViewController.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/14/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    
    @IBOutlet weak var HomeTable: UITableView!
    
    var arrFruites = [fruites]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        HomeTable.dataSource = self
        HomeTable.delegate = self
        
        
        arrFruites.append(fruites.init(photo: UIImage(named: "ter-Stegen-600x708")!, name: "Appel", price: 20, description: "Red Fruite"))
        
        arrFruites.append(fruites.init(photo: UIImage(named: "img_banana")!, name: "banana", price: 10, description: "Yello Fruite"))
        
        arrFruites.append(fruites.init(photo: UIImage(named: "img_lemon")!, name: "lemon", price: 40, description: "Green Fruite"))
        
        arrFruites.append(fruites.init(photo: UIImage(named: "img_mango")!, name: "Mango", price: 90, description: "Very Good Fruite"))
        
        arrFruites.append(fruites.init(photo: UIImage(named: "img_orange")!, name: "Orange", price: 70, description: "Bad Fruite"))
        
        arrFruites.append(fruites.init(photo: UIImage(named: "img_papaya")!, name: "Papaya", price: 40, description: "Good Fruite"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrFruites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruiteCell") as! HomeTableViewCell
        
        let data = arrFruites[indexPath.row]
        
        cell.setUoData(Photo: data.photo, Name: data.name, Price: data.price, Description: data.description)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(arrFruites[indexPath.row].name)
    }

}

struct fruites {

    let photo: UIImage
    let name: String
    let price: Double
    let description: String
}
