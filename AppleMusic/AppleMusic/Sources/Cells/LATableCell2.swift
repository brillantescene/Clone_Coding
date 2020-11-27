//
//  LATableCell2.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/11/27.
//

import UIKit

class LATableCell2: UITableViewCell {

    static let identifier = "LATableCell2"
    @IBOutlet var secondCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
