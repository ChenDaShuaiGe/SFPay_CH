//
//  CHTools.swift
//  SFPay_CH
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

import UIKit

class CHTools: NSObject {
   
    class func createImage(color:UIColor,size:CGSize,isCircle:Bool)->UIImage{
        var image : UIImage
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContext(size)
        let context : CGContextRef = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        if isCircle {
            CGContextFillEllipseInRect(context, rect)
        }else{
            CGContextFillRect(context, rect)
        }
        image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    
}
