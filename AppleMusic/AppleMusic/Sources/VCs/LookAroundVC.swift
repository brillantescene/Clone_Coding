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
        return 3

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
            
        default:
            return UITableViewCell()
        }
        
    }
    
    
}
extension LookAroundVC: UITableViewDelegate {
    
}

