//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Scott Tong on 3/3/15.
//  Copyright (c) 2015 Scott Tong. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

	// OUTLETS
	@IBOutlet weak var contentView: UIView!
	@IBOutlet weak var homeButton: UIButton!
	@IBOutlet weak var searchButton: UIButton!
	@IBOutlet weak var accountButton: UIButton!
	@IBOutlet weak var trendingButton: UIButton!
	@IBOutlet weak var explorePopup: UIImageView!
	
	// CLASS VARIABLES
	var homeViewController: HomeViewController!
	var searchViewController: SearchViewController!
	var composeViewController: ComposeViewController!
	var accountViewController: AccountViewController!
	var trendingViewController: TrendingViewController!
	
	var fadeTransition: FadeTransition!

	var currentViewController: UIViewController!
	var selectedButton: UIButton!
	var explorePopupShowing: Bool!


	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		var storyboard = UIStoryboard(name: "Main", bundle: nil)
		homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeStory") as HomeViewController
		searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchStory") as SearchViewController
		// compose?
		accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountStory") as AccountViewController
		trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingStory") as TrendingViewController
		
		currentViewController = homeViewController
		didPressTabButton(self)
		
//		UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse, animations: { () -> Void in
//					self.explorePopup.center.y = 490
//				}) { (Bool) -> Void in
//				//
//			}
		
		
		explorePopup.hidden = false
		
		UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
			self.explorePopup.center.y = 498
		}) { (Bool) -> Void in
			//
		}
		
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func didPressTabButton(sender: AnyObject) {
		removeChildView(currentViewController)
		addChildViewController(homeViewController)
		var homeView = homeViewController.view
		homeView.frame = contentView.frame
		contentView.addSubview(homeView)
		homeViewController.didMoveToParentViewController(self)
		currentViewController = homeViewController
		
		// button states
		homeButton.selected = true
		searchButton.selected = false
		accountButton.selected = false
		trendingButton.selected = false
		explorePopup.hidden = false

	}

	@IBAction func didPressSearchButton(sender: AnyObject) {
		removeChildView(currentViewController)
		addChildViewController(searchViewController)
		var searchView = searchViewController.view
		searchView.frame = contentView.frame
		contentView.addSubview(searchView)
		homeViewController.didMoveToParentViewController(self)
		currentViewController = searchViewController
		
		// button states
		homeButton.selected = false
		searchButton.selected = true
		accountButton.selected = false
		trendingButton.selected = false
		explorePopup.hidden = true


	}
	
	@IBAction func didPressAccountButton(sender: AnyObject) {
		removeChildView(currentViewController)
		addChildViewController(accountViewController)
		var accountView = accountViewController.view
		accountView.frame = contentView.frame
		contentView.addSubview(accountView)
		accountViewController.didMoveToParentViewController(self)
		currentViewController = accountViewController
		
		// button states
		homeButton.selected = false
		searchButton.selected = false
		accountButton.selected = true
		trendingButton.selected = false
		explorePopup.hidden = false
	}
	
	@IBAction func didPressTrendingButton(sender: AnyObject) {
		removeChildView(currentViewController)
		addChildViewController(trendingViewController)
		var trendingView = trendingViewController.view
		trendingView.frame = contentView.frame
		contentView.addSubview(trendingView)
		trendingViewController.didMoveToParentViewController(self)
		currentViewController = trendingViewController
		
		// button states
		homeButton.selected = false
		searchButton.selected = false
		accountButton.selected = false
		trendingButton.selected = true
		explorePopup.hidden = false
	}
	//first attempt at abstracting the tab button behaviors
//	@IBAction func didTapNavButton(sender: UIButton) {
//		selectedButton = sender as UIButton
//		println(selectedButton.description)
//	}
	
	
	// function to remove views
	func removeChildView (content: UIViewController) {
		content.willMoveToParentViewController(nil)
		content.view.removeFromSuperview()
		content.removeFromParentViewController()
	}

	

	func bubbleAnimation () {
		
		
	}
	
	
	

	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		var destinationViewController = segue.destinationViewController as ComposeViewController
		
		fadeTransition = FadeTransition()
		fadeTransition.duration = 0.5
		destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
		destinationViewController.transitioningDelegate = fadeTransition

		
		
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
	

}
