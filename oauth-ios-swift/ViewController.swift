//
//  ViewController.swift
//  oauth-ios-swift
//
//  Created by Corinne Krych on 31/03/16.
//  Copyright © 2016 FeedHenry. All rights reserved.
//

import UIKit
import FeedHenry

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onGoogleConnect(sender: AnyObject) {
        FH.init { (response: Response, error: NSError?) -> Void in
            if let error = error {
                print("Error during FH.init \(error)")
                return
            }
            let request = FH.authRequest("google")
            request.parentViewController = self
            request.exec({ (resposne: Response, error: NSError?) -> Void in
                if let error = error {
                    print("Error connecting to Google \(error)")
                    return
                }
                print("Successfully connected \(response.rawResponseAsString)")
            })
        }
    }

}

