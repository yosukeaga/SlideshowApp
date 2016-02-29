//
//  WideViewController.swift
//  SlideshowApp
//
//  Created by aga yosuke on 2016/02/24.
//  Copyright © 2016年 yosuke.aga. All rights reserved.
//

import UIKit

class WideViewController: UIViewController {
    
    @IBOutlet weak var Photo2: UIImageView!
    
    var photonumber:Int!
    var img2:UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(photonumber)
        
        // Do any additional setup after loading the view.
        
        img2 = UIImage(named: "\(photonumber).jpg")
        
        Photo2.transform = CGAffineTransformMakeScale(1.5, 1.5)
        Photo2.image = img2
    
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
