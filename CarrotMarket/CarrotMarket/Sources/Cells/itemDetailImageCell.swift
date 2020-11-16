//
//  itemDetailImageCell.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/16.
//

import UIKit

class itemDetailImageCell: UITableViewCell {

    static let identifier = "itemDetailImageCell"
    
    @IBOutlet var imageCollectionView: UICollectionView!
//    @IBOutlet var imagePageControl: UIPageControl!
    
    var images: [String] = ["crush", "nctu"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCell() {
        imageCollectionView.dataSource = self
        imageCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

//    func pageControlInitLayout() {
//        imagePageControl.numberOfPages = images.count
//    }
}

extension itemDetailImageCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageDetailCollectionCell.identifier, for: indexPath) as? imageDetailCollectionCell else {
            return UICollectionViewCell()
        }
        cell.setImage(imageName: images[indexPath.item])
        return cell
    }
    
}
extension itemDetailImageCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
    UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width,
                      height: collectionView.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
