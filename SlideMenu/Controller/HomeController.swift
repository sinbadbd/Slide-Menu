//
//  HomeController.swift
//  SlideMenu
//
//  Created by sinbad on 8/19/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    var delegate: HomeControllerDeleget?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        configurationNavigationBar()
    }
    
 
    func configurationNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Slide Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu2").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    @objc func handleMenuToggle(){
        delegate?.handleMenuToggle()
    }

}
