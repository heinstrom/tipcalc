//
//  SettingsViewController.swift
//  tips
//
//  Created by Travis Heinstrom on 8/26/15.
//  Copyright (c) 2015 Travis Heinstrom. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        var defaults = NSUserDefaults.standardUserDefaults()
        
        defaultTipControl.selectedSegmentIndex = defaults.integerForKey("default_tip")
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

    @IBAction func defaultTipChanged(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipControl.selectedSegmentIndex, forKey: "default_tip")
    }
}
