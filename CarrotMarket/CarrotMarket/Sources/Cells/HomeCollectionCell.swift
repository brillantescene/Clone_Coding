//
//  HomeCollectionCell.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/08.
//

import UIKit

class HomeCollectionCell: UICollectionViewCell {
    static let identifier = "HomeCollectionCell"
    
    @IBOutlet var homeTableView: UITableView!
    
    var items: [Item] = []
    
    func setCell(){
        setItemData()
        homeTableView.dataSource = self
        
    }

    
    func setItemData() {
        items.append(contentsOf: [
            Item(title: "Lovesick Girls", location: "일산서구 송포동", time: "방금 전", price: "70,000원", itemImageName: "blackpink"),
            Item(title: "Dynamite", location: "정발산동", time: "방금 전", price: "15,000원", itemImageName: "bts"),
            Item(title: "positions", location: "고양시 일산동구 마두동", time: "끌올 5초 전", price: "30,000원", itemImageName: "ariana"),
            Item(title: "놓아줘 (with 태연)", location: "일산동", time: "끌올 5초 전", price: "6,000원", itemImageName: "crush"),
            Item(title: "I CAN'T STOP ME", location: "파주시 금촌2동", time: "끌올 2일 전", price: "230,000원", itemImageName: "twice"),
            Item(title: "Make A Wish (Birthday Song)", location: "고양시 일산동구 풍산동", time: "8초 전", price: "5,000원", itemImageName: "nctu"),
            Item(title: "ALIEN", location: "야당동", time: "9초 전", price: "30,000원", itemImageName: "leesuhyeon"),
            Item(title: "DON'T TOUCH ME", location: "고양시 일산동구 백석동", time: "16초 전", price: "50,000원", itemImageName: "hwanbool"),
            Item(title: "Pretty Savage", location: "탄현동", time: "16초 전", price: "20,000원", itemImageName: "blackpink"),
            Item(title: "Bet You Wanna (feat. Cardi B)", location: "야당동", time: "6시간 전", price: "5,000원", itemImageName: "blackpink")
        ])
    }
}
//
extension HomeCollectionCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ItemListCell.identifier) as? ItemListCell else { return UITableViewCell() }
        cell.setCell(item: items[indexPath.row]) //rank: indexPath.row,
        return cell
    }
}

//extension HomeCollectionCell: UITableViewDelegate {
//    func tableView(_ tableView: UITableView,
//                   didSelectRowAt indexPath: IndexPath) {
//        let selectItem = items[indexPath.row]
//        if let nextVC = self.storyboard?.instantiateViewController(identifier: "ItemDetailVC") as? ItemDetailVC {
//            nextVC.item = selectItem
//            self.navigationController?.pushViewController(nextVC, animated: true)
//        }
//    }
//}
