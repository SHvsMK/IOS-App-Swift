//
//  ViewController.swift
//  IOS_APP_Swift_1
//
//  Created by Yicheng Wang on 26/2/2016.
//  Copyright © 2016 Yicheng Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var customButton: UIButton!
    
    var Tapflag: Bool!
    var currentTime: NSTimer!
    var Sec: Int!
    var Minute: Int!
    var Hour: Int!
    var buttonImage: UIImage!
    
    
    @IBOutlet weak var Time_Display: UILabel!
    
    @IBOutlet weak var Tap: UIButton!
    @IBAction func Tap(button: UIButton) {
        if (!Tapflag) {
            Tapflag = true
            return
        }
        Tapflag = false
        Sec = 0
        Minute = 0
        Hour = 0
        let duration : String! = Time_Display.text
        let Msg = "You insist for \(duration)!"
        let myAlert = UIAlertController(title: Msg, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: BackToOrigin))
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Timer Controller
        configureButton()
        init_Timer()
        currentTime = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("changeTime"), userInfo: nil, repeats: true)
        
        //Custom Button
        configureButton()
    }
    
    func configureButton() {
        Tap.setBackgroundImage(UIImage(named: "SHvsMK.jpg"), forState: UIControlState.Normal)
        Tap.setTitleColor(UIColor.blueColor(), forState: UIControlState.Highlighted)
        Tap.backgroundColor = UIColor.orangeColor()
        Tap.layer.borderWidth = 1.8
        //Tap.layer.borderColor = UIColor.whiteColor().CGColor
        Tap.layer.masksToBounds = true
        Tap.layer.cornerRadius = 25
    }
    
    func init_Timer() {
        Tapflag = false
        Sec = 0
        Minute = 0
        Hour = 0
        Time_Display.text = "00:00:00"
    }
    
    func BackToOrigin(alertAction: UIAlertAction!) {
        Time_Display.text = "00:00:00"
    }
    
    func changeTime() {
        if(!Tapflag) {
            return
        }
        Sec = Sec + 1
        Minute = Minute + Sec / 60
        Sec = Sec % 60
        Hour = Hour + Minute / 60
        Minute = Minute % 60
        Hour = Hour % 24
        Time_Display.text =
            String(format: "%02d:", Hour) +
            String(format: "%02d:", Minute) +
            String(format: "%02d", Sec)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

