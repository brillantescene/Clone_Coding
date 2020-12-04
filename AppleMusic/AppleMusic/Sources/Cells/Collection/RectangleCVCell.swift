//
//  RectangleCVCell.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/12/04.
//

import UIKit

class RectangleCVCell: UICollectionViewCell {

    static let identifier = "RectangleCVCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.image = UIImage(named: "rectangle")
        imageView.layer.cornerRadius = 4
        titleLabel.text = "행복"
    }

}
