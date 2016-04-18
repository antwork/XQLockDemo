//
//  LKLockZoneItemView.swift
//  XQLockDemo
//
//  Created by Lunkr on 16/4/18.
//  Copyright © 2016年 Bill. All rights reserved.
//

import UIKit

class LKLockZoneItemView: XQLockZoneItemView {
    
    var imageV:UIImageView?

    override required init(frame: CGRect) {
        super.init(frame: frame)
        
        prepare()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        prepare()
    }
    
    func prepare() {
        imageV = UIImageView(frame:self.bounds)
        imageV?.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        addSubview(imageV!)
    }
    
    override func updateAppearance() {
        var img:UIImage?
        switch state {
        case .None:
            img = UIImage(named: "lock_idle")
        case .Success:
            img = UIImage(named: "lock_right")
        case .Failure:
            img = UIImage(named: "lock_wrong")
        }
        if img != nil {
            imageV?.image = img!
        }
    }
}
