//
//  XQLockZoneView.swift
//  XQLockDemo
//
//  Created by Lunkr on 16/4/18.
//  Copyright © 2016年 Bill. All rights reserved.
//

import UIKit

enum XQLockOrientaion: Int {
    case None = 0
    case Top, Left, Bottom, Right
}



class XQLockZoneView: UIView {
    
    let itemBeginTag = 10000
    
    let itemSize:CGFloat = 63.0
    let itemSpace:CGFloat = 41.0
    
    var inputPsw = ""
    var firstTimePsw = ""
    var selectedViews = [UIImageView]()

    var provider:(Void->XQLockZoneItemView)
    
    required init(frame: CGRect, provider:(Void->XQLockZoneItemView)) {
        self.provider = provider
        
        super.init(frame: frame)
        
        prepareSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        let provider = aDecoder.decodeObjectForKey("provider") as! (Void->XQLockZoneItemView)
        self.provider = provider
        
        super.init(coder: aDecoder)
        
        prepareSubviews()
    }
    
    func prepareSubviews() {
        for i in 0..<9 {
            let view = provider()
            view.tag = itemBeginTag + i
            addSubview(view)
            view.updateAppearance()
        }
        updateSubFrames()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateSubFrames()
    }
    
    func updateSubFrames() {
        let ox:CGFloat = (self.bounds.size.width - 3 * itemSize - 2 * itemSpace)/2.0
        let oy:CGFloat = 0
        
        var x = ox
        var y = oy
        for i in (0..<9) {
            if i > 0 && i % 3 == 0 {
                x = ox;
                y += itemSize + itemSpace
            }
            
            let imageView = viewWithTag(i + itemBeginTag)
            let frame = CGRectMake(x, y, itemSize, itemSize)
            imageView?.frame = frame
            
            x += itemSpace + itemSize
        }
    }
    
    override func drawRect(rect: CGRect) {
        // draw line
        if selectedViews.count == 0 {
            return
        }
    }
}
