//
//  HomeViewController.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/10/31.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var topView: UIView!
    @IBOutlet var homeCollectionView: UICollectionView!

    

    override func viewDidLoad() {
        super.viewDidLoad()
//        setItemData()
//        itemTableView.dataSource = self
        homeCollectionView.isPagingEnabled = true
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
    }

}
extension HomeViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 2 //peopleList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (indexPath.item == 0) {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionCell.identifier, for: indexPath) as? HomeCollectionCell else {
                return UICollectionViewCell()
            }
        
            cell.setCell()
            return cell
        }
        else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LocalCollectionCell.identifier, for: indexPath) as? LocalCollectionCell else {
                return UICollectionViewCell()
            }
            cell.setCell()
            return cell
        }
    }


    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                            UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize { return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
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


