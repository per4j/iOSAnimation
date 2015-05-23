//
//  PositionViewController.swift
//  iOSAnimation
//
//  Created by NSPer4j on 15/5/23.
//  Copyright (c) 2015年 per4j. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1, animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
        })
        
        UIView.animateWithDuration(1, delay: 0.4, options: nil, animations: {
            self.redSquare.center.y = self.view.bounds.height - self.redSquare.center.y
        }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1, options: nil, animations: {
            self.yellowSquare.center.x = self.view.bounds.width - self.yellowSquare.center.x
            self.yellowSquare.center.y = self.view.bounds.height - self.yellowSquare.center.y
            }, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
