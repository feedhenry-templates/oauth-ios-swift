/*
* JBoss, Home of Professional Open Source.
* Copyright Red Hat, Inc., and individual contributors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

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

    @IBAction func onGoogleConnect(_ sender: AnyObject) {
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

