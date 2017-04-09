//
//  MyTabBarViewController.swift
//  SWTabsWithSpecialTab
//
//  Created by DonMag on 4/9/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

		setupMiddleButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	func setupMiddleButton() {
		let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
		var menuButtonFrame = menuButton.frame
		menuButtonFrame.origin.y = self.view.bounds.height - menuButtonFrame.height
		menuButtonFrame.origin.x = self.view.bounds.width/2 - menuButtonFrame.size.width/2
		menuButton.frame = menuButtonFrame
		
		menuButton.backgroundColor = UIColor.white
		menuButton.layer.cornerRadius = menuButtonFrame.height/2
		
		menuButton.setImage(UIImage(named: "klein_fototoestel_2"), for: UIControlState.normal) // 450 x 450px
		menuButton.contentMode = .scaleAspectFit
		menuButton.addTarget(self, action: #selector(menuButtonAction), for: UIControlEvents.touchUpInside)
		
		self.view.addSubview(menuButton)
		
		
		self.view.layoutIfNeeded()
	}
	
	func menuButtonAction(sender: UIButton) {
		
		// Don't navigate to the tab index
		//self.selectedIndex = 2
		
		// instead, load and present the view you really want to see
		
		if let vc = storyboard?.instantiateViewController(withIdentifier: "SpecialVC") as? SpecialViewController {
		
			vc.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext

			self.present(vc, animated: true, completion: nil)
		
		}
		
	}
	
}
