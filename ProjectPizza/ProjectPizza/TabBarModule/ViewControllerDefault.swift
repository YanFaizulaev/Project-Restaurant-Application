//
//  ViewControllerDefault.swift
//  ProjectPizza
//
//  Created by Bandit on 07.03.2023.
//

import UIKit

class ViewControllerDefault : UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        setView()
    }
    
    private let searchBar = UISearchBar()
    
    func setView () {
        
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.blue]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
        
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance =  navigationController?.navigationBar.standardAppearance
        navigationController?.navigationBar.tintColor = UIColor.red
        
        showSearchBarButton(shouldShow: true)
        
    }
    
    func showSearchBarButton(shouldShow: Bool) {
        if shouldShow {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search,
                                                                target: self,
                                                                action: #selector(handleShowSearchBar))
        } else {
            navigationItem.rightBarButtonItem = nil
        }
    }
    
    @objc func handleShowSearchBar() {
        searchBar.becomeFirstResponder()
        search(shouldShow: true)
    }
    
    func search(shouldShow: Bool) {
        showSearchBarButton(shouldShow: !shouldShow)
        searchBar.showsCancelButton = shouldShow
        navigationItem.titleView = shouldShow ? searchBar : nil
    }

    
    
}
