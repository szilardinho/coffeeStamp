//
//  ViewController.swift
//  coffeeStamp
//
//  Created by Szi Gabor on 4/7/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit

class StampViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let VC0 = ViewController0(nibName: "ViewController0", bundle: nil)
        self.addChildViewController(VC0)
        self.scrollView.addSubview(VC0.view)
        VC0.didMove(toParentViewController: self)
        
        
        let VC1 = ViewController1(nibName: "ViewController1", bundle: nil)
        
        var frame1 = VC1.view.frame
        frame1.origin.x = self.view.frame.size.width
        VC1.view.frame = frame1
        
        self.addChildViewController(VC1)
        self.scrollView.addSubview(VC1.view)
        VC1.didMove(toParentViewController: self)
       
        
        let VC2 = ViewController2(nibName: "ViewController2", bundle: nil)
        
        var frame2 = VC2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        VC2.view.frame = frame2
        
        self.addChildViewController(VC2)
        self.scrollView.addSubview(VC2.view)
        VC2.didMove(toParentViewController: self)
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width * 3, height: self.view.frame.size.height - 66)
        
    }



}

