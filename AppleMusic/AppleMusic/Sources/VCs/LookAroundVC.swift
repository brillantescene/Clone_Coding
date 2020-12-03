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
        
        self.navigationController?.navigationBar.topItem?.title = "둘러보기"
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
        
        
        registerXib()
        
        
        LATableView.dataSource = self
        
//        mainTableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
    }

    func registerXib() {
        let LATVCell1Nib = UINib(nibName: "LATVCell1", bundle: nil)
        LATableView.register(LATVCell1Nib, forCellReuseIdentifier: "LATVCell1")
        
        let SquareTVCellNib = UINib(nibName: "SquareTVCell", bundle: nil)
        LATableView.register(SquareTVCellNib, forCellReuseIdentifier: "SquareTVCell")
        
        
    }
}
extension LookAroundVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10

    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableTitleCell.identifier) as? LATableTitleCell else {
                return UITableViewCell()
            }
            return cell
        case 1:
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATVCell1.identifier) as? LATVCell1 else {
//                let rowArray = gottaHearArray.objectsArray
//                cell.updateCellWith(row: rowArray)
                
                return UITableViewCell()
            }
            cell.setCell()
            return cell
//            let Tablecell = LATableView.dequeueReusableCell(withIdentifier: LATableCell1.identifier, for: indexPath) as! LATableCell1
//
//            let collectionCell = Tablecell
//
//            collectionCell.didSelectItemAction = { [weak self] indexPath in
//                    self?.performSegue(withIdentifier: FirstCollectionVC.identifier, sender: self)
//                }
//            collectionCell.setCell()
//                return collectionCell

        
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SquareTVCell.identifier) as? SquareTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "이번 주의 신곡")
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell3.identifier) as? LATableCell3 else {
                return UITableViewCell()
            }
//            cell.setCell()
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SquareTVCell.identifier) as? SquareTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "행복한 날")
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
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SquareTVCell.identifier) as? SquareTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "오늘의 TOP 100")
            return cell
        case 9:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell9.identifier) as? LATableCell9 else {
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

