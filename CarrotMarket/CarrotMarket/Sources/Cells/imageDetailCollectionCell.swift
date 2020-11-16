//
//  imageDetailCollectionCell.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/16.
//

import UIKit

class imageDetailCollectionCell: UICollectionViewCell {
    
    @IBOutlet var itemImageView: UIImageView!
    static let identifier = "imageDetailCollectionCell"
    
    func setImage(imageName: String){
        itemImageView.image = UIImage(named: imageName)
    }
}
