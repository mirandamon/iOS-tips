//
//  SettingsViewController.swift
//  CodePath TipCalculator
//
//  Created by Nathan Miranda on 12/25/15.
//  Copyright © 2015 Miraen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultControl: UISegmentedControl!
    @IBOutlet weak var themeControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var themeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipValue = defaults.integerForKey("defaultTipIndex")
        defaultControl.selectedSegmentIndex = tipValue
        let themeSetting = defaults.integerForKey("themeIndex")
        themeControl.selectedSegmentIndex = themeSetting
        if themeSetting == 1{
            self.view.backgroundColor = UIColor.grayColor()
            self.view.tintColor = UIColor.whiteColor()
            tipLabel.textColor = UIColor.whiteColor()
            themeLabel.textColor = UIColor.whiteColor()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChangedSettings(sender: AnyObject) {
        var defaultTip = defaultControl.selectedSegmentIndex
        var themeSetting = themeControl.selectedSegmentIndex
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTip, forKey: "defaultTipIndex")
        defaults.setInteger(themeSetting, forKey: "themeIndex")
        print(themeSetting)
        //print(defaultTip)
        defaults.synchronize()
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
