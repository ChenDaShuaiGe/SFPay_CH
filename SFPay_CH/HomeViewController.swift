//
//  HomeViewController.swift
//  SFPay_CH
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{

    @IBOutlet weak var topBackgroundView: UIView!
    private var collectionView : UICollectionView?
    
    let imgArr : NSArray = ["icon_express_Home","icon_financing_Home","icon_preferred_Home","icon_charge_Home","icon_bonus_Home","icon_more_Home"]
    let nameArr : NSArray = ["快递","理财","优选","充值","红包","更多"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        initCollectionView()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    //collectionView 相关
    func initCollectionView() {
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: CGRectZero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerClass(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(collectionView)
        collectionView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        weak var weakSelf = self
        collectionView.mas_updateConstraints { (maker : MASConstraintMaker!) -> Void in
            maker.top.equalTo()(weakSelf!.topBackgroundView.mas_bottom).with().offset()(10)
            maker.bottom.equalTo()(weakSelf!.view.mas_bottom).with().offset()(-49)
            maker.left.right().equalTo()(weakSelf!.view)
            return ()
        }
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(110, 100)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let alertView = UIAlertView(title: nil, message: nameArr.objectAtIndex(indexPath.row) as? String, delegate: nil, cancelButtonTitle: "确定")
        alertView.show()
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as? HomeCollectionViewCell
        
        if (cell?.imageView == nil) {
            cell!.initView()
        }
        cell?.setContent(imgArr.objectAtIndex(indexPath.row)as String, title: nameArr.objectAtIndex(indexPath.row)as String)
//        cell?.contentView.backgroundColor = UIColor.yellowColor()
        
        return cell!
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
