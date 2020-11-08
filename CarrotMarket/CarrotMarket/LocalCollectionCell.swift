//
//  LocalCollectionCell.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/08.
//

import UIKit

class LocalCollectionCell: UICollectionViewCell {
    static let identifier = "LocalCollectionCell"
    
    @IBOutlet var localLabel: UILabel!
    func setCell(){
        localLabel.text = "동네생활"
    }
}
