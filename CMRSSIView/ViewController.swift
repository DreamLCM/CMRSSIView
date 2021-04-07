//
//  ViewController.swift
//  CMRSSIView
//
//  Created by Cimons on 2021/4/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView = CMRSSIView(frame: CGRect(x: 0, y: 100, width: 375, height: 150))
        testView.rssiBackLineCount = 30
        view.addSubview(testView)
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (timer) in
            testView.countLine = Int(arc4random()%30 + 1)
        }
        
    }

}

