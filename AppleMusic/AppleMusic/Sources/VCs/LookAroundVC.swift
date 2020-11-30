//
//  LookAroundVC.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/11/23.
//

import UIKit

class LookAroundVC: UIViewController {

    @IBOutlet var LATableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LATableView.dataSource = self
    }

}
extension LookAroundVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9

    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableTitleCell.identifier) as? LATableTitleCell else {
                return UITableViewCell()
            }
            return cell
        case 1:
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell1.identifier) as? LATableCell1 else {
//                return UITableViewCell()
//            }
            
            ////
            let Tablecell = LATableView.dequeueReusableCell(withIdentifier: LATableCell1.identifier, for: indexPath) as! LATableCell1

//                    Tablecell.configureCell() // this is function which setups my collection view

            let collectionCell = Tablecell

            collectionCell.didSelectItemAction = { [weak self] indexPath in
                    self?.performSegue(withIdentifier: FirstCollectionVC.identifier, sender: self)
                }
            collectionCell.setCell()
                return collectionCell
            ////
            //////
//            let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell1.identifier, for: indexPath)
//            guard let productsCell = cell as? LATableCell1 else {
//                return cell
//            }
//
//            productsCell.didSelectItemAction = { [weak self] indexPath in
//                self?.performSegue(withIdentifier: FirstCollectionVC.identifier, sender: self)
//            }
//
//            return productsCell
            //////
//
//            cell.setCell()
//            return cell
        
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell2.identifier) as? LATableCell2 else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell3.identifier) as? LATableCell3 else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell4.identifier) as? LATableCell4 else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 5:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell5.identifier) as? LATableCell5 else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
        case 6:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell6.identifier) as? LATableCell6 else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 7:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell7.identifier) as? LATableCell7 else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
        case 8:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell8.identifier) as? LATableCell8 else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 9:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell9.identifier) as? LATableCell9 else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    
}
extension LookAroundVC: UITableViewDelegate {
    
}

