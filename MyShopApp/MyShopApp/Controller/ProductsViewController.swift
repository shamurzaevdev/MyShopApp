//
//  ProductsViewController.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// There are we can manage our products

final class ProductsViewController: UIViewController {

       // MARK: - Private properties
    
       private var productViews = ProductsViews()

       var productsNames = ""
       var productsImages = UIImage(systemName: "magnifyingglass")

       // MARK: - Life Cycle
       override func viewDidLoad() {
           super.viewDidLoad()
           setupUI()
       }

       // MARK: - Private Methods
       private func setupUI() {
           productViews.productLable.text = productsNames
           productViews.productImageView.image = productsImages
           view.addSubview(productViews.productLable)
           view.addSubview(productViews.productImageView)
       }
}
