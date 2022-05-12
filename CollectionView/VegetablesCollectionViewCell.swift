//
//  VegetablesCollectionViewCell.swift
//  CollectionView
//
//  Created by mac on 28/01/2022.
//

import UIKit

class VegetablesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var price: UILabel!
    
    func setUpCell(ph : UIImage , pr : Double){
        photo.image = ph
        price.text = "\(pr)"
        
    }
}
