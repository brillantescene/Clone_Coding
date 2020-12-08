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
        tableView.dataSource = self
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
extension TableCVCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10

    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableinTableTVCell.identifier) as? TableinTableTVCell else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableinTableTVCell.identifier) as? TableinTableTVCell else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableinTableTVCell.identifier) as? TableinTableTVCell else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableinTableTVCell.identifier) as? TableinTableTVCell else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        
        default:
            return UITableViewCell()
        }
    }
}
