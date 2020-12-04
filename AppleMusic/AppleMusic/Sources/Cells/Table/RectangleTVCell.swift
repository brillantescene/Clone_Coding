//
//  RectangleTVCell.swift
//  AppleMusic
//
//  Created by ✨EUGENE✨ on 2020/12/04.
//

import UIKit

class RectangleTVCell: UITableViewCell {

    static let identifier = "RectangleTVCell"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
    let itemSpacing: CGFloat = 8
    let horizonInset: CGFloat = 24
    let rightSpacing: CGFloat = 24
    let lineSpacing: CGFloat = 10

    func setCell(title: String) {
        
        titleLabel.text = title
        
        let collectionViewCellNib = UINib(nibName: "RectangleCVCell", bundle: nil)
        collectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "RectangleCVCell")
        
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
extension RectangleTVCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 17
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RectangleCVCell.identifier, for: indexPath) as? RectangleCVCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}

extension RectangleTVCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellHeight = collectionView.frame.height
        let cellWidth = (collectionView.frame.width - horizonInset - rightSpacing) / 2 - 5
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: horizonInset, bottom: 0, right: horizonInset) }
}
