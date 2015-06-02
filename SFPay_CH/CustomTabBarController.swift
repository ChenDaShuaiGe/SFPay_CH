//
//  CustomTabBarController.swift
//  SFPay_CH
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard.init(name: "HomeStoryboard", bundle: nil)
        
        let homeVC: HomeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as HomeViewController
        let messageVC = MessageViewController()
        let accountVC = AccountViewController()
        let assetVC = AssetViewController()
        
        let vcArr : NSArray = [homeVC,messageVC,accountVC,assetVC]
        self.viewControllers = vcArr
        
        let arr :NSArray = ["首页","消息","资产","我的"]
        var vc : UIViewController
        for var i = 0 ;i<4; i++ {
            vc = vcArr.objectAtIndex(i) as UIViewController
            vc.tabBarItem = UITabBarItem(title: arr.objectAtIndex(i) as? String, image: CHTools.createImage(UIColor.whiteColor(), size: CGSizeMake(30, 25), isCircle: true), selectedImage: CHTools.createImage(UIColor.yellowColor(), size: CGSizeMake(25, 25), isCircle: true))
            vc.navigationItem.title = arr.objectAtIndex(i) as? String
            
            }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
