//
//  ItemListCell.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/01.
//

import UIKit

class ItemListCell: UITableViewCell {
    
    @IBOutlet var itemImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    static let identifier = "ItemListCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell(item: Item) {
        
        itemImageView.layer.cornerRadius = 5
        itemImageView.image = item.makeItemImage()
        titleLabel.text = item.title
        locationLabel.text = item.location
        timeLabel.text = item.time
        priceLabel.text = item.price
 
    }
}
