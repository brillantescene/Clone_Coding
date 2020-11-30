//
//  SquareCVCell.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/11/29.
//

import UIKit

class SquareCVCell: UICollectionViewCell {

    static let identifier = "SquareCVCell"
    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        albumImageView.layer.cornerRadius = 4
    
    }

    func setImage(name: String){
        albumImageView.image = UIImage(named: name)
    }
}
