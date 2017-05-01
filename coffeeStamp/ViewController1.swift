//
//  ViewController1.swift
//  coffeeStamp
//
//  Created by Szi Gabor on 4/7/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func stampPressed(_ sender: Any) {
        
        let scannerController = ScannerController()
        scannerController.modalTransitionStyle = .flipHorizontal
        
        self.present(scannerController, animated: true, completion: nil)

    }
    
    

}
