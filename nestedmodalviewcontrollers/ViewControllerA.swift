//
//  ViewControllerA.swift
//  nestedmodalviewcontrollers
//
//  Created by Louis Tran on 9/13/16.
//  Copyright © 2016 IF. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pushBandPresentC(sender: UIButton) {
        let vcB = ViewControllerB()
        navigationController?.delegate = vcB
        navigationController?.pushViewController(vcB, animated: false)
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
