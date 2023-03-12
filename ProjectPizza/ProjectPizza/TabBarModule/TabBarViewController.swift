//
//  TabBarViewController.swift
//  ProjectPizza
//
//  Created by Bandit on 06.03.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabBarViewController ()
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//    }

    func setupTabBarViewController() {

        let viewController1 = UINavigationController(rootViewController: FirstViewController())
        let viewController2 = UINavigationController(rootViewController: SecondViewController())
        let viewController3 = UINavigationController(rootViewController: ThirdViewController())
        let viewController4 = UINavigationController(rootViewController: FourViewController())
        let viewController5 = UINavigationController(rootViewController: FiveViewControoler())
        
        viewController1.title = "Рестораны"
        viewController2.title = "Меню"
        viewController3.title = "Акции"
        viewController4.title = "Купоны"
        viewController5.title = "Ещё"
        
        self.tabBar.backgroundColor = UIColor.white
        self.setViewControllers([viewController1, viewController2, viewController3, viewController4, viewController5], animated: true)
        
        guard let items = self.tabBar.items else {
            return
        }

        let images = ["fork.knife", "menucard", "list.bullet.clipboard", "list.dash.header.rectangle", "poweroutlet.type.c"]
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
    }
}
