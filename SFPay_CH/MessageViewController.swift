//
//  MessageViewController.swift
//  SFPay_CH
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTableView()
        
        // Do any additional setup after loading the view.
    }
    
    func initTableView(){
        tableView = UITableView(frame: CGRectZero, style: UITableViewStyle.Plain)
        tableView!.delegate = self
        tableView!.dataSource = self
        tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "CELL")
        self.view.addSubview(tableView!)
        
        tableView?.tableFooterView = UIView(frame: CGRectZero)
        
        weak var weakSelf = self
        tableView?.mas_updateConstraints({ (maker : MASConstraintMaker!) -> Void in
            maker.left.right().equalTo()(weakSelf?.view)
            maker.top.equalTo()(weakSelf?.view.mas_top)
            maker.bottom.equalTo()(weakSelf?.view).with().offset()(-49)
            return()
        })
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView .deselectRowAtIndexPath(indexPath, animated: true)
        let alertView = UIAlertView(title: nil, message: NSString(format: "消息%d", indexPath.row+1), delegate: nil, cancelButtonTitle: "确定")
        alertView.show()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell :UITableViewCell?
        cell = tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as? UITableViewCell
        if cell == nil{
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "CELL")
        }
        cell?.textLabel?.text = NSString(format: "消息%d", indexPath.row+1)
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
