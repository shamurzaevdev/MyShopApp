//
//  SearchView.swift
//  MyShopApp
//
//  Created by Эл on 09.10.2022.
//

import UIKit

/// MVC - View part of project

final class SearchView: UIView {
    
    lazy var searchLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 15, y: 80, width: 150, height: 60)
        label.textColor = .label
        label.text = "Search"
        label.font = .systemFont(ofSize: 40, weight: .bold)
        return label
    }()

    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.frame = CGRect(x: 15, y: 145, width: 380, height: 35)
        searchBar.placeholder = "Поиск по продуктам и магазинам"
        searchBar.layer.cornerRadius = 10
        searchBar.layer.masksToBounds = true
        searchBar.setImage(UIImage(systemName: "magnifyingglass"), for: .search, state: .normal)
        return searchBar
    }()

    lazy var recentlyViewedLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 15, y: 200, width: 290, height: 60)
        label.textColor = .label
        label.text = "Recently viewed"
        label.font = .systemFont(ofSize: 23, weight: .bold)
        return label
    }()

    lazy var clearButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 305, y: 202, width: 100, height: 60)
        button.setTitle("Clear", for: .normal)
        button.titleLabel?.font = UIFont(name: "", size: 20)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()

    lazy var requestsHistory: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 15, y: 460, width: 290, height: 60)
        label.textColor = .label
        label.text = "Query options"
        label.font = .systemFont(ofSize: 23, weight: .bold)
        return label
    }()

    lazy var airPodsLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 510, width: 290, height: 60)
        label.textColor = .label
        label.text = "AirPods"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()

    lazy var airPodsImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 15, y: 530, width: 20, height: 20)
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .gray
        return image
    }()

    lazy var appleCareLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 550, width: 290, height: 60)
        label.textColor = .label
        label.text = "AppleCare"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()

    lazy var appleCareImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 15, y: 570, width: 20, height: 20)
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .gray
        return image
    }()

    lazy var beatsLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 590, width: 290, height: 60)
        label.textColor = .label
        label.text = "Beats"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()

    lazy var beatsImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 15, y: 610, width: 20, height: 20)
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .gray
        return image
    }()

    lazy var iPhoneLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 630, width: 290, height: 60)
        label.textColor = .label
        label.text = "Сравнение модели iPhone"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()

    lazy var iPhoneImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 15, y: 650, width: 20, height: 20)
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .gray
        return image
    }()

    lazy var caseOneView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 15, y: 255, width: 150, height: 200)
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()

    lazy var caseTwoView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 180, y: 255, width: 150, height: 200)
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()

    lazy var caseThreeView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 345, y: 255, width: 150, height: 200)
        view.backgroundColor = .systemGray6
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()

    lazy var caseViewOneLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 22, y: 100, width: 100, height: 100)
        label.textColor = .label
        label.text = "Чехол Incase Flat для MacBook Pro 16 дюймов"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12, weight: .regular)
        return label
    }()

    lazy var caseViewOneImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 15, y: 12, width: 110, height: 110)
        image.image = UIImage(named: "Image")
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var caseViewTwoLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 22, y: 100, width: 100, height: 100)
        label.textColor = .label
        label.text = "Cпортивный ремешок Black Unity"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12, weight: .regular)
        return label
    }()

    lazy var caseViewTwoImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 15, y: 12, width: 110, height: 110)
        image.image = UIImage(named: "4")
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var caseViewThreeLable: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 22, y: 100, width: 100, height: 100)
        label.textColor = .label
        label.text = "Кожаный чехол для MacBook Pro 16 дюймов"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12, weight: .regular)
        return label
    }()

    lazy var caseViewThreeImageView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 15, y: 12, width: 110, height: 110)
        image.image = UIImage(named: "2")
        image.contentMode = .scaleAspectFit
        return image
    }()

}
