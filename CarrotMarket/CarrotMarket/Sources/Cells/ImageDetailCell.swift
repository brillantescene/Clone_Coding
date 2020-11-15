//
//  ImageDetailCell.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/09.
//

import UIKit

class ImageDetailCell: UITableViewCell {

    static let identifier = "itemDetailTableCell"
    @IBOutlet var itemImageView: UIImageView!
    var item: Item?
    func setCell(){
        if let item = item {
            itemImageView.image = item.makeItemImage()
        }
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
