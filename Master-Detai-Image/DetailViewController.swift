//
//  ViewController.swift
//  Master-Detai-Image
//
//  Created by Vũ on 3/1/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageDetailView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    var image: UIImage? {
        didSet {
            imageDetailView?.image = image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDetailView.image = image
        scrollView.delegate = self
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageDetailView
    }

}

