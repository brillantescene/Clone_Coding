//
//  LocalPageCell.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/16.
//

import UIKit

class LocalPageCell: UITableViewCell {
    static let identifier = "LocalPageCell"
    
    @IBOutlet var tagLabel: UILabel!
    @IBOutlet var whenLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var localLabel: UILabel!
    @IBOutlet var authLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var mentionLabel: UILabel!
    @IBOutlet var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCell(localItem: LocalItem) {
        profileImageView.image = localItem.makeItemImage()
        profileImageView.layer.cornerRadius = 15
        tagLabel.text = "  \(localItem.tag)  "
        tagLabel.layer.cornerRadius = 5
        whenLabel.text = localItem.when
        nameLabel.text = localItem.name
        localLabel.text = localItem.local
        authLabel.text = "인증 \(localItem.auth)회"
        bodyLabel.text = localItem.body
        mentionLabel.text = "댓글 \(localItem.mention)"
        
    }
}
