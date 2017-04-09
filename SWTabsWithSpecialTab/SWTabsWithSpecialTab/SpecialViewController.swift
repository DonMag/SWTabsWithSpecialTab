//
//  SpecialViewController.swift
//  SWTabsWithSpecialTab
//
//  Created by DonMag on 4/9/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class SpecialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	// this dismisses "self" when presented modally
	@IBAction func dismissTapped(_ sender: Any) {
		self.dismiss(animated: true, completion: nil)
	}
	
}
