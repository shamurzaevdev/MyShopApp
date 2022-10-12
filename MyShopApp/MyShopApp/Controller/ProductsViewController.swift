//
//  ProductsViewController.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// There are we can manage our products

final class ProductsViewController: UIViewController {
    
       // MARK: - Constants
    enum Constants {
        static let priceOfIncaseFlatText = "3 990.00 Rub."
        static let compatibleWithText = "Compatible with"
        static let macOfEvgenyText = "MacBook Pro - Evgeny"
        static let orderTodayText = "Order today during the day, delivery:"
        static let deliveryDateText = "Thursday 25 February - Free Shipping"
        static let deliveryOptionsText = "Delivery options for location: 115533"
        static let likeBarItemImage = UIImage(systemName: "heart")
        static let shareBarItemImage = UIImage(systemName: "square.and.arrow.up")
        static let firstIncaseFlatImage = UIImage(named: "Image")
        static let secondIncaseFlatImage = UIImage(named: "case2")
        static let thirdIncaseFlatImage = UIImage(named: "case3")
        static let firstIphoneImage = UIImage(named: "iPhones")
        static let secondIphoneImage = UIImage(named: "iphones12pro")
        static let thirdIphoneImage = UIImage(named: "applePhone")
        static let firstLeatherImage = UIImage(named: "2")
        static let leatherSecondImage = UIImage(named: "caseBrown2")
        static let leatherThirdImage = UIImage(named: "caseBrown3")
        static let firstRect = CGRect(x: 50, y: 0, width: 300, height: 300)
        static let secondRect = CGRect(x: 470, y: 0, width: 300, height: 300)
        static let thirdRect = CGRect(x: 830, y: 0, width: 300, height: 300)
    }
       
       // MARK: - Private properties
    lazy var likeBarItem: UIBarButtonItem = {
        let buttonItem = UIBarButtonItem(image: Constants.likeBarItemImage,
                                         style: .plain,
                                         target: self,
                                         action: nil)
        return buttonItem
    }()
    
    lazy var shareBarItem: UIBarButtonItem = {
        let buttonItem = UIBarButtonItem(image: Constants.shareBarItemImage,
                                         style: .plain,
                                         target: self,
                                         action: nil)
        return buttonItem
    }()
    
    private lazy var productsSrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 10, y: 160, width: view.bounds.width, height: 300)
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGRect(x: 10, y: 160, width: 1200, height: 300).size
        return scrollView
    }()
    
    private var productViews = ProductsViews()

    // MARK: - Public Properties
    var productsNames = ""
    var productsImages = UIImage(systemName: "magnifyingglass")
    var prices = ""

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    private func setupUI() {
        productViews.productLable.text = productsNames
        productViews.productImageView.image = productsImages
        productViews.productSecondLabel.text = productsNames
        productViews.priceLabel.text = prices
        view.addSubview(productsSrollView)
        productsSrollView.addSubview(productViews.productImageView)
        view.addSubview(productViews.priceLabel)
        view.addSubview(productViews.productSecondLabel)
        navigationItem.setRightBarButtonItems([likeBarItem, shareBarItem], animated: true)
        view.addSubview(productViews.compatibleLabel)
        view.addSubview(productViews.firstColorButton)
        view.addSubview(productViews.secondColorButton)
        view.addSubview(productViews.isCompatibleImageView)
        view.addSubview(productViews.macOfEvgenyLabel)
        view.addSubview(productViews.orderButton)
        view.addSubview(productViews.productLable)
        view.addSubview(productViews.deliveryInfoLabel)
        view.addSubview(productViews.deliveryOptionsLabel)
        view.addSubview(productViews.deliverydateLabel)
        setIncaseFlatsScrollView()
        setLeatherScrollView()
        setIphoneScrollView()
    }
    
    private func newImageViewWithImage(paramImage: UIImage?, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
    
    private func setIncaseFlatsScrollView() {
        guard productsImages == Constants.firstIncaseFlatImage else { return }
        let firstImage = newImageViewWithImage(paramImage: productsImages, paramFrame: Constants.firstRect)
        productsSrollView.addSubview(firstImage)
        let secondImage = newImageViewWithImage(paramImage: Constants.secondIncaseFlatImage,
                                                paramFrame: Constants.secondRect)
        productsSrollView.addSubview(secondImage)
        let thirdImage = newImageViewWithImage(paramImage: Constants.thirdIncaseFlatImage,
                                               paramFrame: Constants.thirdRect)
        productsSrollView.addSubview(thirdImage)
    }
    
    private func setLeatherScrollView() {
        guard productsImages == Constants.firstLeatherImage else { return }
        let firstImage = newImageViewWithImage(paramImage: productsImages, paramFrame: Constants.firstRect)
        productsSrollView.addSubview(firstImage)
        let secondImage = newImageViewWithImage(paramImage: Constants.leatherSecondImage,
                                                paramFrame: Constants.secondRect)
        productsSrollView.addSubview(secondImage)
        let thirdImage = newImageViewWithImage(paramImage: Constants.leatherThirdImage,
                                               paramFrame: Constants.thirdRect)
        productsSrollView.addSubview(thirdImage)
    }
    
    private func setIphoneScrollView() {
        guard productsImages == Constants.firstIphoneImage else { return }
        let firstImage = newImageViewWithImage(paramImage: productsImages, paramFrame: Constants.firstRect)
        productsSrollView.addSubview(firstImage)
        let secondImage = newImageViewWithImage(paramImage: Constants.secondIphoneImage,
                                                paramFrame: Constants.secondRect)
        productsSrollView.addSubview(secondImage)
        let thirdImage = newImageViewWithImage(paramImage: Constants.thirdIphoneImage,
                                               paramFrame: Constants.thirdRect)
        productsSrollView.addSubview(thirdImage)
    }
}
