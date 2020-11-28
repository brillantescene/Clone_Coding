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
    
    let horizonInset: CGFloat = 24
    
    let rightSpacing: CGFloat = 24
    
    let lineSpacing: CGFloat = 10
    
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
        return 11
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
        let cellWidth = (collectionView.frame.width - lineSpacing - rightSpacing)/1.05
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: horizonInset, bottom: 0, right: horizonInset) }
}


//extension LATableCell1: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        didSelectItemAction?(indexPath)
//    }
//}

