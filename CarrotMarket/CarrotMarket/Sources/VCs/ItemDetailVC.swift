//
//  ItemDetailVC.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/09.
//

import UIKit

class ItemDetailVC: UIViewController {
    
    static let identifier = "ItemDetailVC"
    
    @IBOutlet var itemDetailTableView: UITableView!
    
    var item: Item?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemDetailTableView.dataSource = self
    
    }
    
    
    

}
extension ItemDetailVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6 //item.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: itemDetailImageCell.identifier) as? itemDetailImageCell else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableCell.identifier) as? ProfileTableCell else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: bodyTableCell.identifier) as? bodyTableCell else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ReportTableCell.identifier) as? ReportTableCell else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
            
        default:
            break
        }
        
        return UITableViewCell()
    }
}













//extension setCell
//extension ItemDetailVC: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageDetailCell.identifier) as? ImageDetailCell else { return UITableViewCell() }
//        cell.setCell() //rank: indexPath.row,
//        return cell
//    }
//}
//
