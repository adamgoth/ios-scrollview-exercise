//
//  ViewController.swift
//  the-walking-scrollview
//
//  Created by Adam Goth on 7/5/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 253
    let HEIGHT: CGFloat = 384

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x += 1 {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 360, WIDTH, HEIGHT)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
    }

}

