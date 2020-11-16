//
//  LocalsVC.swift
//  CarrotMarket
//
//  Created by ✨EUGENE✨ on 2020/11/15.
//

import UIKit

class LocalsVC: UIViewController {

    @IBOutlet var localPageTableView: UITableView!
    
    var localItem: [LocalItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPageData()
        localPageTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func setPageData() {
        localItem.append(contentsOf: [
        LocalItem(profileImageName: "heesoo", name: "송지", tag: "우리동네질문", when: "어제", local: "정발산동", auth: "1", body: "율동초등학교 근처에 1인분 배달되는 겁나 맛있는곳 있을까요? 근처에서 장사하는데 점심때마다 유목민생활 지치네요...", mention:"1"),
        LocalItem(profileImageName: "heesoo", name: "송지", tag: "우리동네질문", when: "어제", local: "정발산동", auth: "1", body: "율동초등학교 근처에 1인분 배달되는 겁나 맛있는곳 있을까요? 근처에서 장사하는데 점심때마다 유목민생활 지치네요...", mention:"1"),
        LocalItem(profileImageName: "heesoo", name: "송지", tag: "우리동네질문", when: "어제", local: "정발산동", auth: "1", body: "율동초등학교 근처에 1인분 배달되는 겁나 맛있는곳 있을까요? 근처에서 장사하는데 점심때마다 유목민생활 지치네요...", mention:"1"),])
    }
}

extension LocalsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        localItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LocalPageCell.identifier) as? LocalPageCell else {
            return UITableViewCell()
        }
        cell.setCell(localItem: localItem[indexPath.row])
        return cell
    }
    
    
}
