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
		
		if let thePresenter = self.presentingViewController {
			print("self.presentingViewController --- is valid...", thePresenter)
		} else {
			print("whoops... why isn't that valid?")
		}
		
		if let thePresenter = self.presentingViewController as? MyTabBarViewController {
			print("self.presentingViewController as? MyTabBarViewController --- is valid...", thePresenter)
		} else {
			print("whoops... why isn't that valid either?")
		}

		
		self.dismiss(animated: true, completion: nil)
	}
	
}
