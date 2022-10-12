//
//  ViewController.swift
//  testVideo
//
//  Created by Эл on 11.10.2022.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var myScrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let iphoneImage = UIImage(named: "Image")
        let ipadImage = UIImage(named: "airpod")
        let macBookImage = UIImage(named: "case3")
        
        let scrollViewRect = view.bounds
        
        //createScroll
        myScrollView = UIScrollView(frame: scrollViewRect)
        myScrollView.isPagingEnabled = true
        myScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3, height: scrollViewRect.size.height)
        view.addSubview(myScrollView)
        
        // createIphone
        var imageViewRect = view.bounds
        let iphoneImageView = newImageViewWithImage(paramImage: iphoneImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(iphoneImageView)
        
        // nextPage
        imageViewRect.origin.x += imageViewRect.size.width
        let ipadImageView = newImageViewWithImage(paramImage: ipadImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(ipadImageView)
        
        //nextPage
        imageViewRect.origin.x += imageViewRect.size.width
        let macBookImageView = newImageViewWithImage(paramImage: macBookImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(macBookImageView)
    }
    
    //newImageWithImage
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
}

