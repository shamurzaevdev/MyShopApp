//
//  MainTabBarViewController.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// Managing tab bar

final class MainTabBarViewController: UITabBarController {
    
    // MARK: - Constants
    
    private enum Constants {
        static let forYouItemText = "For you"
        static let buyItemText = "Buy"
        static let searchItemText = "Search"
        static let orderItemText = "Order Cart"
    }
    
    // MARK: - Private properties
    
    private let forYouViewController = ForYouViewController()
    private let forYouTabBarItem = UITabBarItem(title: Constants.forYouItemText,
                                                image: UIImage(systemName: "person.circle"),
                                                tag: 0)
    
    private let buyViewController = BuyViewController()
    private let buyTabBarItem = UITabBarItem(title: Constants.buyItemText,
                                             image: UIImage(named: "laptop"),
                                             tag: 1)
    
    private let searchViewController = SearchViewController()
    private let searchTabBarItem = UITabBarItem(title: Constants.searchItemText,
                                                image: UIImage(systemName: "magnifyingglass"),
                                                tag: 2)
    
    private let orderViewController = OrderCartViewController()
    private let orderTabBarItem = UITabBarItem(title: Constants.orderItemText,
                                               image: UIImage(systemName: "bag"),
                                               tag: 3)
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Private methods
    private func setupUI() {
        let navigationController = UINavigationController(rootViewController: searchViewController)
        viewControllers = [buyViewController, forYouViewController, navigationController, orderViewController]
        forYouViewController.tabBarItem = forYouTabBarItem
        buyViewController.tabBarItem = buyTabBarItem
        searchViewController.tabBarItem = searchTabBarItem
        orderViewController.tabBarItem = orderTabBarItem
        tabBar.backgroundColor = .systemGray6
    }
}
