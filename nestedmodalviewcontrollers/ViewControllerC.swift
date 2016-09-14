//
//  ViewControllerC.swift
//  nestedmodalviewcontrollers
//
//  Created by Louis Tran on 9/13/16.
//  Copyright © 2016 IF. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewControllers = navigationController?.viewControllers
        if let vcs = viewControllers {
            for viewController in vcs {
                print(viewController.description)
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissCAndB(sender: UIButton) {
        var rootPresentingVC = presentingViewController
        
        while (rootPresentingVC?.presentingViewController != nil) {
            rootPresentingVC = rootPresentingVC?.presentingViewController
        }
        
        rootPresentingVC!.dismissViewControllerAnimated(true, completion: nil)
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
