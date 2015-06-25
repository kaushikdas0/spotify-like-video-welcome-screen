//
//  LoggedInViewController.swift
//  spotify-like-welcome-screen
//
//  Created by kdas on 25/6/15.
//  Copyright (c) 2015 com.kaushik. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        var welcomeScreen:ViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("X10X10") as! ViewController
        
        self.presentViewController(welcomeScreen, animated: true, completion: nil)

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
