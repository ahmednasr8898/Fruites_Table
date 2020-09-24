//
//  HomeTableViewCell.swift
//  FruiteTable
//
//  Created by Ahmed Nasr on 9/14/20.
//  Copyright © 2020 Ahmed Nasr. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imageFruite: UIImageView!
    @IBOutlet weak var NameFruite: UILabel!
    @IBOutlet weak var priceFruite: UILabel!
    @IBOutlet weak var descriptionFruite: UILabel!
    @IBOutlet weak var FavouritebtnFruite: UIButton!
    
    
    func setUoData(Photo: UIImage , Name: String , Price: Double , Description: String) {
       
        imageFruite.image = Photo
        NameFruite.text = Name
        priceFruite.text = "\(Price) EG"
        descriptionFruite.text  = Description
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
