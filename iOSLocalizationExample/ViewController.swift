//
//  ViewController.swift
//  iOSLocalizationExample
//
//  Created by Balaji Malliswamy on 14/12/17.
//  Copyright © 2017 NFNLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgFlag: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        print("\(Locale.current.languageCode)")
        if let language = Locale.current.languageCode {
            let imageName = "Flag-\(language)"
            self.imgFlag.image = UIImage(named: imageName)
        }
    }

    @IBAction func showMsgOnClick(_ sender: Any) {
        let localizedTitle = NSLocalizedString("Welcome", comment: "")
        let localizedContent = NSLocalizedString("Thanks you for download this app", comment: "")
        let alert = UIAlertController(title: localizedTitle, message: localizedContent, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: ""), style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


