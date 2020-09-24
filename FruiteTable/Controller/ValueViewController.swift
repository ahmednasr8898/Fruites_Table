//
//  ValueViewController.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/15/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class ValueViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {

    @IBOutlet weak var ValueTable: UITableView!
    
    var arrValue = [String]()
    
    let refresh = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ValueTable.delegate = self
        ValueTable.dataSource = self

        refresh.tintColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        refresh.addTarget(self, action: #selector(getData), for: .valueChanged)
        ValueTable.addSubview(refresh)
        
    }
    
    @objc
    func getData() {
        
        arrValue.append("Value \(arrValue.count)")
        refresh.endRefreshing()
        ValueTable.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrValue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ValueCell", for: indexPath)
        cell.textLabel?.text = arrValue[indexPath.row]
        return cell
    }
    

}
