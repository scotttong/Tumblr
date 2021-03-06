//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Scott Tong on 3/3/15.
//  Copyright (c) 2015 Scott Tong. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

	@IBOutlet weak var nevermindButton: UIButton!
	@IBOutlet weak var textButton: UIButton!
	@IBOutlet weak var photoButton: UIButton!
	@IBOutlet weak var quoteButton: UIButton!
	@IBOutlet weak var linkButton: UIButton!
	@IBOutlet weak var chatButton: UIButton!
	@IBOutlet weak var videoButton: UIButton!
	
	

    override func viewDidLoad() {
        super.viewDidLoad()
		

		textButton.center.y = 650
		photoButton.center.y = 650
		quoteButton.center.y = 650
		linkButton.center.y = 650
		chatButton.center.y = 650
		videoButton.center.y = 650
		nevermindButton.center.y = view.bounds.height + nevermindButton.frame.height/2

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	override func viewWillAppear (animated: Bool) {
		//
	}
	
	override func viewDidAppear (animated: Bool) {
		//
		UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
			self.nevermindButton.center.y = self.view.bounds.height - self.nevermindButton.frame.height/2

			}) { (Bool) -> Void in
				//code
		}

		
		UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
				self.textButton.center.y = 212
		}) { (Bool) -> Void in
			//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
			self.photoButton.center.y = 212
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
			self.quoteButton.center.y = 212
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
			self.linkButton.center.y = 332
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
			self.chatButton.center.y = 332
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: nil, animations: { () -> Void in
			self.videoButton.center.y = 332
			}) { (Bool) -> Void in
				//code
		}



	}
	
	override func viewWillDisappear (animated: Bool) {
		
		UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
				self.nevermindButton.center.y = self.view.bounds.height + self.nevermindButton.frame.height/2
			}) { (Bool) -> Void in
				//code
		}
		
		
		UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
				self.textButton.center.y = -75
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
				self.photoButton.center.y = -75
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
				self.quoteButton.center.y = -75
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
				self.linkButton.center.y = -75
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
				self.chatButton.center.y = -75
			}) { (Bool) -> Void in
				//code
		}
		
		UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: nil, animations: { () -> Void in
				self.videoButton.center.y = -75
			}) { (Bool) -> Void in
				//code
		}

	}
	
	override func viewDidDisappear (animated: Bool) {
		//
		
	}
    
	@IBAction func didPressNevermind(sender: AnyObject) {
		dismissViewControllerAnimated(true, completion: nil)
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
