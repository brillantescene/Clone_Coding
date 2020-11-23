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
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableTitleCell.identifier) as? LATableTitleCell else {
                return UITableViewCell()
            }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell1.identifier) as? LATableCell1 else {
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
