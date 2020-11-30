//
//  LATableCell8.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/11/29.
//

import UIKit

class LATableCell8: UITableViewCell {

    static let identifier = "LATableCell8"
    
    @IBOutlet var collectionView: UICollectionView!
    
    let topInset: CGFloat = 23
    let bottomInset: CGFloat = 21
    let itemSpacing: CGFloat = 8
    let horizonInset: CGFloat = 24
    let rightSpacing: CGFloat = 24
    let lineSpacing: CGFloat = 10

    func setCell() {
        let collectionViewCellNib = UINib(nibName: "SquareCVCell", bundle: nil)
        collectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "SquareCVCell")
        collectionView.dataSource = self
        collectionView.delegate = self
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
extension LATableCell8: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 14
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SquareCVCell.identifier, for: indexPath) as? SquareCVCell else {
            return UICollectionViewCell()
        }
        cell.setImage(name: "top100")
        return cell
    }
    
    
}

extension LATableCell8: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellHeight = (collectionView.frame.height)// - topInset - bottomInset)
        let cellWidth = (collectionView.frame.width)// - horizonInset - rightSpacing)/2 - 5
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: horizonInset, bottom: 0, right: horizonInset) }
}
