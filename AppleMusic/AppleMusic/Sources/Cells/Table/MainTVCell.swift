//
//  MainTVCell.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/12/01.
//

import UIKit

class MainTVCell: UITableViewCell {

    static let identifier = "MainTVCell"
    
    @IBOutlet var tableViewTitle: UILabel!
    @IBOutlet var seeAllBtn: UIButton!
    @IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
