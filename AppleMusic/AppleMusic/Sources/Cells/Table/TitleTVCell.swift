//
//  TitleTVCell.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/12/04.
//

import UIKit

class TitleTVCell: UITableViewCell {

    static let identifier = "TitleTVCell"
    @IBOutlet var titleLabel: UILabel!
    
    func setCell(title: String) {
        titleLabel.text = title
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
