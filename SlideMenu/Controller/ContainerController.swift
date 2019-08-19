//
//  ContainerController.swift
//  SlideMenu
//
//  Created by sinbad on 8/19/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {

    var menuController : UIViewController!
    var centerController : UIViewController!
    var isExpanded = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurationHomeController()
        // Do any additional setup after loading the view.
    }
    
    func configurationHomeController(){
        
        let homeController = HomeController()
        homeController.delegate = self
        centerController = UINavigationController(rootViewController: homeController)
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configurationMenuController(){
        if menuController == nil {
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did add menu controller")
        }
    }
    
    
    func showMenuController(showdExpand: Bool){
        if showdExpand {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
}

extension ContainerController : HomeControllerDeleget{
    func handleMenuToggle() {
        
        if !isExpanded {
            configurationMenuController()
        }
        isExpanded = !isExpanded
        showMenuController(showdExpand: isExpanded)
        
    }
}
