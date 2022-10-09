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
        view.addSubview(searchViews.caseOneView)
        view.addSubview(searchViews.caseTwoView)
        view.addSubview(searchViews.searchBar)
        view.addSubview(searchViews.recentlyViewedLabel)
        view.addSubview(searchViews.airPodsLable)
        view.addSubview(searchViews.airPodsImageView)
        view.addSubview(searchViews.iPhoneLable)
        view.addSubview(searchViews.iPhoneImageView)
        view.addSubview(searchViews.beatsImageView)
        view.addSubview(searchViews.caseThreeView)
        searchViews.caseOneView.addSubview(searchViews.caseViewOneLable)
        searchViews.caseTwoView.addSubview(searchViews.caseViewTwoImageView)
        searchViews.caseThreeView.addSubview(searchViews.caseViewThreeLable)
        searchViews.caseOneView.addSubview(searchViews.caseViewOneImageView)
        searchViews.caseTwoView.addSubview(searchViews.caseViewTwoLable)
        searchViews.caseThreeView.addSubview(searchViews.caseViewThreeImageView)
        recognizeGesture()
    }

    private func recognizeGesture() {
        searchViews.caseOneView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                            action: #selector(tapAction)))
        searchViews.caseOneView.tag = 1
        searchViews.caseTwoView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                            action: #selector(tapAction)))
        searchViews.caseTwoView.tag = 2
        searchViews.caseThreeView.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                                              action: #selector(tapAction)))
        searchViews.caseThreeView.tag = 3
    }

    // MARK: - Objc Methods
    @objc private func tapAction(param: UIGestureRecognizer) {
        let productsViewController = ProductsViewController()
        switch param.view?.tag {
        case 1:
            productsViewController.productsNames = "Чехол Incase Flat для MacBook Pro 16 дюймов"
            productsViewController.productsImages = UIImage(named: "Image")
        case 2:
            productsViewController.productsNames = "Cпортивный ремешок Black Unity"
            productsViewController.productsImages = UIImage(named: "4")
        case 3:
            productsViewController.productsNames = "Кожаный чехол для MacBook Pro 16 дюймов"
            productsViewController.productsImages = UIImage(named: "2")
        default:
            break
        }
        navigationController?.pushViewController(productsViewController, animated: false)
    }
}
