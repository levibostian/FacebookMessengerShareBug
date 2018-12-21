//
//  ViewController.swift
//  FacebookMessengerShareBug
//
//  Created by Levi Bostian on 12/21/18.
//  Copyright © 2018 Levi Bostian. All rights reserved.
//

import UIKit
import FacebookShare
import FacebookCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let facebookShareLink = LinkShareContent(url: URL(string: "https://github.com")!)
        let facebookMessengerShareDialog = MessageDialog(content: facebookShareLink)
        facebookMessengerShareDialog.failsOnInvalidData = true
        facebookMessengerShareDialog.completion = { result in
            switch result {
            case .success(let result): break
            case .failed(let error):
                NSLog("Error in result of share: \(error)")
            case .cancelled: break
            }
        }

        do {
            try facebookMessengerShareDialog.validate()
            do {
                try facebookMessengerShareDialog.show()
            } catch {
                NSLog("Error showing: \(error)")
            }
        } catch {
            NSLog("Error validating: \(error)")
            // Facebook not able to share link.
        }
    }

}

