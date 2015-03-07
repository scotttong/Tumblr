//
//  HomeViewController.swift
//  Tumblr
//
//  Created by Scott Tong on 3/3/15.
//  Copyright (c) 2015 Scott Tong. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
	@IBOutlet weak var homeScrollView: UIScrollView!
	
	var fadeTransition: FadeTransition!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		homeScrollView.frame.size = CGSize(width: view.bounds.width, height: 524)
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	
	override func viewWillAppear (animated: Bool) {
//		println("----")
//		println("home view will appear")
	}
	
	override func viewDidAppear (animated: Bool) {
//		println("home view did appear")
	}
	
	override func viewWillDisappear (animated: Bool) {
//		println("home view will disappear")
	}
	
	override func viewDidDisappear (animated: Bool) {
//		println("home view did disappear")
//		println("----")
		
	}


	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		var destinationViewController = segue.destinationViewController as LoginViewController
		
		fadeTransition = FadeTransition()
		fadeTransition.duration = 0.3
		destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
		destinationViewController.transitioningDelegate = fadeTransition
		
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
	

}
