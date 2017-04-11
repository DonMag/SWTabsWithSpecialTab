//
//  SecondViewController.swift
//  SWTabsWithSpecialTab
//
//  Created by DonMag on 4/9/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func didTap(_ sender: Any) {
		
		if let specInNavVC = storyboard?.instantiateViewController(withIdentifier: "specInNavVC") as? SpecInNavViewController {

			let specInfoNavVC = UINavigationController(rootViewController: specInNavVC)
		
			if let myTabBarVC = self.tabBarController as? MyTabBarViewController {
				myTabBarVC.present(specInfoNavVC, animated: true, completion: nil)
			}

		}
		
//		let planSettingsVC = PlanSettingsViewController.instantiateFromStoryboard()
//		let planInfoNavCon = UINavigationController(rootViewController: planSettingsVC)
//		
//		if let myTabBarVC = self.tabBarController as? MyPlanTabBarController {
//			myTabBarVC.present(planInfoNavCon, animated: true, completion: nil)
//		}
		
	}

}

