//
//  MenuController.swift
//  SlideMenu
//
//  Created by sinbad on 8/19/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import UIKit

class MenuController: UIViewController {

    let CELL = "MENU"
    
    var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    

    func configureTableView(){
        tableView = UITableView()
        tableView.delegate = self
        tableView.delegate = self
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: CELL)
    }

}

extension MenuController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: CELL, for: indexPath) as! MenuOptionCell
        return cell
    }
    
}
