//
//  LookAroundVC.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/11/23.
//

import UIKit

class LookAroundVC: UIViewController {

    @IBOutlet var LATableView: UITableView!
    @IBOutlet var albumImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "둘러보기"
        registerXib()
        albumImage()
        LATableView.dataSource = self
    }

    func albumImage() {
        albumImageView.layer.cornerRadius = 4
        albumImageView.layer.shadowOpacity = 0.1
        albumImageView.layer.shadowOffset = CGSize(width: 0, height: 3)
        albumImageView.layer.shadowRadius = 3
    }
    func registerXib() {
        
        let TitleTVCellNib = UINib(nibName: "TitleTVCell", bundle: nil)
        LATableView.register(TitleTVCellNib, forCellReuseIdentifier: "TitleTVCell")
        
        let LATVCell1Nib = UINib(nibName: "LATVCell1", bundle: nil)
        LATableView.register(LATVCell1Nib, forCellReuseIdentifier: "LATVCell1")
        
        let SquareTVCellNib = UINib(nibName: "SquareTVCell", bundle: nil)
        LATableView.register(SquareTVCellNib, forCellReuseIdentifier: "SquareTVCell")
        
        let RectangleTVCellNib = UINib(nibName: "RectangleTVCell", bundle: nil)
        LATableView.register(RectangleTVCellNib, forCellReuseIdentifier: "RectangleTVCell")
        
    }
}
extension LookAroundVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10

    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTVCell.identifier) as? TitleTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "둘러보기")
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATVCell1.identifier) as? LATVCell1 else {
                return UITableViewCell()
            }
            cell.setCell()
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SquareTVCell.identifier) as? SquareTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "믿고 들으세요")
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RectangleTVCell.identifier) as? RectangleTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "무드별 음악")
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SquareTVCell.identifier) as? SquareTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "행복한 날")
            return cell
//        case 5:
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell5.identifier) as? LATableCell5 else {
//                return UITableViewCell()
//            }
//            cell.setCell()
//            return cell
//        case 6:
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: LATableCell6.identifier) as? LATableCell6 else {
//                return UITableViewCell()
//            }
//            cell.setCell()
//            return cell
        case 7:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RectangleTVCell.identifier) as? RectangleTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "Apple Music 라디오")
            return cell
        case 8:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SquareTVCell.identifier) as? SquareTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "2020년 최고의 노래")
            return cell
        case 9:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SquareTVCell.identifier) as? SquareTVCell else {
                return UITableViewCell()
            }
            cell.setCell(title: "오늘의 TOP 100")
            return cell
        default:
            return UITableViewCell()
        }
    }
}
extension LookAroundVC: UITableViewDelegate {
    
}

