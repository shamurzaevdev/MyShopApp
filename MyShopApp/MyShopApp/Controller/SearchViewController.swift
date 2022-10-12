//
//  ViewController.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// Main Menu where we can manage all our data

final class SearchViewController: UIViewController {
    
    // MARK: - Private properties

    private var searchViews = SearchView()
    
    private lazy var shopScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 10, y: 250, width: view.bounds.width, height: 210)
        scrollView.contentSize = CGRect(x: 10, y: 250, width: 680, height: 200).size
        return scrollView
    }()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    private func setupUI() {
        view.addSubview(searchViews.searchLabel)
        view.addSubview(searchViews.appleCareLable)
        view.addSubview(searchViews.appleCareImageView)
        view.addSubview(searchViews.beatsLable)
        view.addSubview(searchViews.clearButton)
        view.addSubview(searchViews.requestsHistory)
        view.addSubview(searchViews.searchBar)
        view.addSubview(searchViews.recentlyViewedLabel)
        view.addSubview(searchViews.airPodsLable)
        view.addSubview(searchViews.airPodsImageView)
        view.addSubview(searchViews.iPhoneLable)
        view.addSubview(searchViews.iPhoneImageView)
        view.addSubview(searchViews.beatsImageView)
        view.addSubview(shopScrollView)
        shopScrollView.addSubview(searchViews.incaseFlatView)
        shopScrollView.addSubview(searchViews.blackUnityView)
        shopScrollView.addSubview(searchViews.leatherCaseView)
        shopScrollView.addSubview(searchViews.iphonesWindowView)
        searchViews.incaseFlatView.addSubview(searchViews.incaseFlatLable)
        searchViews.blackUnityView.addSubview(searchViews.blackUnityImageView)
        searchViews.leatherCaseView.addSubview(searchViews.leatherCaseLable)
        searchViews.incaseFlatView.addSubview(searchViews.incaseFlatImageView)
        searchViews.blackUnityView.addSubview(searchViews.blackUnityLable)
        searchViews.leatherCaseView.addSubview(searchViews.leatherCaseImageView)
        searchViews.iphonesWindowView.addSubview(searchViews.iphonesWindowLable)
        searchViews.iphonesWindowView.addSubview(searchViews.iphonesWindowImageView)
        recognizeGesture()
    }

    private func recognizeGesture() {
        searchViews.incaseFlatView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                            action: #selector(tapAction)))
        searchViews.incaseFlatView.tag = 1
        searchViews.blackUnityView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                            action: #selector(tapAction)))
        searchViews.blackUnityView.tag = 2
        searchViews.leatherCaseView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                              action: #selector(tapAction)))
        searchViews.leatherCaseView.tag = 3
        searchViews.iphonesWindowView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                                  action: #selector(tapAction)))
        searchViews.iphonesWindowView.tag = 4
    }

    // MARK: - Objc Methods
    @objc private func tapAction(param: UIGestureRecognizer) {
        let productsViewController = ProductsViewController()
        switch param.view?.tag {
        case 1:
            productsViewController.productsNames = "Чехол Incase Flat для MacBook Pro 16 дюймов"
            productsViewController.productsImages = UIImage(named: "Image")
            productsViewController.prices = ProductsViewController.Constants.priceOfIncaseFlatText
        case 2:
            productsViewController.productsNames = "Cпортивный ремешок Black Unity"
            productsViewController.productsImages = UIImage(named: "4")
            productsViewController.prices = ProductsViewController.Constants.priceOfIncaseFlatText
        case 3:
            productsViewController.productsNames = "Кожаный чехол для MacBook Pro 16 дюймов"
            productsViewController.productsImages = UIImage(named: "2")
            productsViewController.prices = ProductsViewController.Constants.priceOfIncaseFlatText
        case 4:
            productsViewController.productsNames = "Iphone 12 Pro"
            productsViewController.productsImages = UIImage(named: "iPhones")
            productsViewController.prices = ProductsViewController.Constants.priceOfIncaseFlatText
        default:
            break
        }
        navigationController?.pushViewController(productsViewController, animated: false)
    }
}
