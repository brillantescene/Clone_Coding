//
//  MainCVCell.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/11/30.
//

import UIKit

class MainCVCell: UICollectionViewCell {
    
    static let identifier = "MainCVCell"
    
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 4
    }

}
