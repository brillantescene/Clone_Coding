//
//  Item.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/01.
//

import UIKit

struct Item {
    var title: String
    var location: String
    var time: String
    var price: String
    var itemImageName: String
    
    func makeItemImage() -> UIImage? {
        return UIImage(named: itemImageName)
    }
}
