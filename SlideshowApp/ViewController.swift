//
//  ViewController.swift
//  SlideshowApp
//
//  Created by aga yosuke on 2016/02/24.
//  Copyright © 2016年 yosuke.aga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Photo: UIImageView!
    @IBOutlet weak var PorS: UIButton!
    @IBOutlet weak var Nx: UIButton!
    @IBOutlet weak var Bc: UIButton!
    
    var img:UIImage!
    
    var No:Int=0
    var Ps:Int=0
    
    var timer:NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        img = UIImage(named:"0.jpg")
        Photo.image = img
        PorS.setTitle("再生", forState: UIControlState.Normal)

    let gesture = UITapGestureRecognizer(target:self, action: "didClickImageView:")
    Photo.addGestureRecognizer(gesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Next(sender: AnyObject) {
        ++No
        print(No)
        
        if No==3{
        No=0
        print(No)
        }
            img = UIImage(named: "\(No).jpg")
            Photo.image = img
        
    }
      
    @IBAction func Back(sender: AnyObject) {
        --No
        print(No)
        
        if No == -1{
        No=2
        print(No)
        }
        
        img = UIImage(named: "\(No).jpg")
        Photo .image = img
        
    }
    @IBAction func STARTorSTOP(sender: AnyObject) {
        ++Ps
        print(Ps)
        if Ps == 2 {
        Ps = 0
            print(Ps)
        }
        
        ///再生アクション
        if Ps == 1{
        PorS.setTitle("停止", forState: UIControlState.Normal)
        //進む、戻るButton タップ不可
        Nx.enabled = false
        Bc.enabled = false
        
            //２秒毎スライドショー
        timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("nextpage"), userInfo: nil, repeats: true)
        
        }
        
        ///停止アクション
        if Ps == 0{
        PorS.setTitle("再生", forState: UIControlState.Normal)
        //進む、戻るButton タップ不可
            Nx.enabled = true
            Bc.enabled = true
        //スライドショー停止
        timer.invalidate()
        }
    }
    
    //timerメソッド
    func nextpage (){
        ++No
        print(No)
        
        if No==3{
            No=0
            print(No)
        }
        img = UIImage(named: "\(No).jpg")
        Photo.image = img
    }
    
    
    func didClickImageView(recognizer: UIGestureRecognizer){
        performSegueWithIdentifier("PushShopDetail", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

         if(segue.identifier ==  "PushShopDetail"){
            let wideViewController2:WideViewController = segue.destinationViewController as!WideViewController
            wideViewController2.photonumber = No
        }
        
    }
    
    
    }

