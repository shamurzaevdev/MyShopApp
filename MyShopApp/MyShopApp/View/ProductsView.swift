//
//  ProductsView.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// List of our products
final class ProductsViews: UIView {

    lazy var productLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 115, y: 100, width: 200, height: 100)
        label.numberOfLines = 0
        label.textColor = .label
        return label
    }()

    lazy var productImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 115, y: 300, width: 200, height: 200)
        image.contentMode = .scaleAspectFit
        return image
    }()

}
