//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Scott Tong on 3/3/15.
//  Copyright (c) 2015 Scott Tong. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
	@IBOutlet weak var loadingBackground: UIView!

	@IBOutlet weak var searchScrollView: UIScrollView!
	@IBOutlet weak var searchFeed: UIImageView!
	@IBOutlet weak var loading1: UIImageView!
	@IBOutlet weak var trendingFeed: UIImageView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

		
		searchScrollView.contentSize = CGSize(width: view.bounds.width/2, height: 1217)
		searchScrollView.frame.size.height = 524
	
		
		searchFeed.hidden = true
		var images = UIImage.animatedImageNamed("loading-", duration: 0.7)
		loading1.image = images
	
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	override func viewWillAppear (animated: Bool) {

		
	}
	
	override func viewDidAppear (animated: Bool) {

		delay(2, { () -> () in
			self.searchFeed.hidden = false
			self.loading1.hidden = true
		})
		
	
	}
	
	override func viewWillDisappear (animated: Bool) {
//		println("search view will disappear")
	}
	
	override func viewDidDisappear (animated: Bool) {
//		println("search view did disappear")
//		println("----")
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
