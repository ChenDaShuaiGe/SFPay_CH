//
//  HomeCollectionViewCell.swift
//  SFPay_CH
//
//  Created by ssf-2 on 15/6/2.
//  Copyright (c) 2015年 CH. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    var imageView : UIImageView?
    var nameLabel : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    func initView(){
        
        imageView = UIImageView(frame: CGRectZero)
        self.contentView.addSubview(imageView!)
        
        nameLabel = UILabel(frame:CGRectZero)
        nameLabel!.textAlignment = NSTextAlignment.Center
        self.contentView.addSubview(nameLabel!)
        
    }
    
    func setContent(imgName:String,title:String){
        let image = UIImage(named: imgName)
        imageView!.image = image
        imageView!.frame = CGRectMake(self.bounds.width/2-image!.size.width/2, self.bounds.height/2-image!.size.height*0.75, image!.size.width, image!.size.height)
        
        nameLabel!.frame = CGRectMake(10, CGRectGetMaxY(imageView!.frame)+10, self.frame.size.width-20, 20)
        nameLabel!.text = title
        
        print(image)
        print(imageView)
        print(nameLabel)

    }

}
