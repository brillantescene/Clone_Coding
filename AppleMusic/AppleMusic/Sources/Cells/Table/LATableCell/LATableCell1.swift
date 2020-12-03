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
    
    let itemSpacing: CGFloat = 8
    let horizonInset: CGFloat = 24
    let rightSpacing: CGFloat = 24
    let lineSpacing: CGFloat = 10

    func setCell() {
        let collectionViewCellNib = UINib(nibName: "MainCVCell", bundle: nil)
        FirstCollectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "MainCVCell")
        FirstCollectionView.dataSource = self
        FirstCollectionView.delegate = self
    }

    
    var didSelectItemAction: ((IndexPath) -> Void)?
    
    
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
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCVCell.identifier, for: indexPath) as? MainCVCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}

extension LATableCell1: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellHeight = collectionView.frame.height
        let cellWidth = (collectionView.frame.width - horizonInset - rightSpacing) // 2 - 5
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: horizonInset, bottom: 0, right: horizonInset) }
}
