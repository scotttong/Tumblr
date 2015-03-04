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
	
	// CLASS VARIABLES
	var homeViewController: HomeViewController!
	var searchViewController: SearchViewController!
	var composeViewController: ComposeViewController!
	var accountViewController: AccountViewController!
	var trendingViewController: TrendingViewController!
	
	var fadeTransition: FadeTransition!

	var currentViewController: UIViewController!
	var selectedButton: UIButton!

	
	
	
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


	}
	
	//first attempt at abstracting the tab button behaviors
	@IBAction func didTapNavButton(sender: UIButton) {
		selectedButton = sender as UIButton
		println(selectedButton.description)
	}
	
	
	// function to remove views
	func removeChildView (content: UIViewController) {
		content.willMoveToParentViewController(nil)
		content.view.removeFromSuperview()
		content.removeFromParentViewController()
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
