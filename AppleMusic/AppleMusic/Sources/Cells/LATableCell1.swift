//
//  LATableCell1.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/11/23.
//

import UIKit

class LATableCell1: UITableViewCell {

    static let identifier = "LATableCell1"
    
    @IBOutlet var FirstCollectionView: UICollectionView!
    //    @IBOutlet var cellTitleLabel: UILabel!
    
    let topInset: CGFloat = 23
    let bottomInset: CGFloat = 21
    let itemSpacing: CGFloat = 8
    
    let horizonInset: CGFloat = 20
    
    let rightSpacing: CGFloat = 20
    
    let lineSpacing: CGFloat = 30
    
    var didSelectItemAction: ((IndexPath) -> Void)?
    
    func setCell() {
        FirstCollectionView.dataSource = self
        FirstCollectionView.delegate = self
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
extension LATableCell1: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCollectionCell.identifier, for: indexPath) as? FirstCollectionCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}

extension LATableCell1: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellHeight = (collectionView.frame.height)// - topInset - bottomInset)
        let cellWidth = (collectionView.frame.width)// - lineSpacing - rightSpacing)
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) }
}

//extension TableViewTestVC: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectMusic = musicRank[indexPath.row]
//        let storyboard = UIStoryboard(name: "MusicInfo", bundle: nil)
//
//        if let nextVC = storyboard.instantiateViewController(identifier: "MusicInfoVC") as? MusicInfoVC {
//            nextVC.music = selectMusic
//            self.navigationController?.pushViewController(nextVC, animated: true)
//        }
//    }
//}
extension LATableCell1: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSelectItemAction?(indexPath)
    }
}

