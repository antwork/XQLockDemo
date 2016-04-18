//
//  ViewController.swift
//  XQLockDemo
//
//  Created by Lunkr on 16/4/18.
//  Copyright © 2016年 Bill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var frame = UIScreen.mainScreen().bounds
        frame.origin.y = 64
        frame.size.height = 300
        
        let zone = XQLockZoneView(frame: frame, provider:{
            return LKLockZoneItemView(frame:CGRectZero)
        })
        view.addSubview(zone)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

