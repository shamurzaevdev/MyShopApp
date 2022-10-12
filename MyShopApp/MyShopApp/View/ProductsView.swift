//
//  ProductsView.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// List of our products
final class ProductsViews: UIView {
    
    // MARK: - Properties
    lazy var productLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 100, width: 400, height: 20)
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.numberOfLines = 0
        label.textColor = .label
        return label
    }()
    
    lazy var productSecondLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 480, width: 400, height: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()

    lazy var productImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 50, y: 0, width: 300, height: 300)
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 120, width: 400, height: 30)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .gray
        return label
    }()
    
    lazy var firstColorButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 170, y: 520, width: 36, height: 36)
        button.layer.cornerRadius = 18
        button.layer.borderWidth = 3
        button.backgroundColor = UIColor(named: "Ernest")
        return button
    }()
    
    lazy var secondColorButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 215, y: 520, width: 36, height: 36)
        button.layer.cornerRadius = 18
        button.layer.borderWidth = 2
        button.backgroundColor = UIColor(named: "ErnestSecond")
        button.layer.borderColor = UIColor.systemBlue.cgColor
        return button
    }()
    
    lazy var orderButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 35, y: 665, width: 350, height: 45)
        button.setTitle("Add to cart", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    
    lazy var orderLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 620, width: 170, height: 30)
        label.text = "Add to cart"
        label.font = .systemFont(ofSize: 18)
        return label
    }()
    
    lazy var compatibleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 580, width: 100, height: 30)
        label.text = ProductsViewController.Constants.compatibleWithText
        label.font = .systemFont(ofSize: 13)
        return label
    }()
    
    lazy var macOfEvgenyLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 200, y: 580, width: 200, height: 30)
        label.textColor = .systemBlue
        label.text = ProductsViewController.Constants.macOfEvgenyText
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    lazy var isCompatibleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 70, y: 585, width: 20, height: 20)
        imageView.image = UIImage(systemName: "checkmark.circle.fill")
        imageView.tintColor = .systemGreen
        return imageView
    }()
    
    lazy var deliveryInfoLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 65, y: 720, width: 350, height: 20)
        label.text = ProductsViewController.Constants.orderTodayText
        label.font = .systemFont(ofSize: 13, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    lazy var deliverydateLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 65, y: 740, width: 350, height: 20)
        label.text = ProductsViewController.Constants.deliveryDateText
        label.font = .systemFont(ofSize: 13)
        label.textColor = .white
        return label
    }()
    
    lazy var deliveryOptionsLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 65, y: 760, width: 350, height: 20)
        label.text = ProductsViewController.Constants.deliveryOptionsText
        label.font = .systemFont(ofSize: 13)
        label.textColor = .white
        return label
    }()
}
