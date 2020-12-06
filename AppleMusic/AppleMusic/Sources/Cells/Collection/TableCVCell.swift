//
//  TableCVCell.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/12/06.
//

import UIKit

class TableCVCell: UICollectionViewCell {

    static let identifier = "TableCVCell"
    @IBOutlet var tableView: UITableView!
    
    func setCell() {
        let tableViewCellNib = UINib(nibName: "TableinTableTVCell", bundle: nil)
        tableView.register(tableViewCellNib, forCellReuseIdentifier: "TableinTableTVCell")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
