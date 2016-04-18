//
//  XQLockZoneItemView.swift
//  XQLockDemo
//
//  Created by Lunkr on 16/4/18.
//  Copyright © 2016年 Bill. All rights reserved.
//

import UIKit

enum XQLockState: Int {
    case None = 0
    case Success
    case Failure
}

enum XQLockDirection: Int {
    case None = 0
    case Top = 1
    case RightTop
    case Right
    case RightBottom
    case Bottom
    case LeftBottom
    case Left
    case LeftTop
}

class XQLockZoneItemView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var state:XQLockState = .None {
        didSet {
            updateAppearance()
        }
    }
    
    var direction:XQLockDirection = .None {
        didSet {
            updateAppearance()
        }
    }
    
    func updateAppearance() {
        
    }
}
