//
//  AccountViewController.swift
//  Tumblr
//
//  Created by Scott Tong on 3/3/15.
//  Copyright (c) 2015 Scott Tong. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
	@IBOutlet weak var accountScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		accountScrollView.contentSize = CGSize(width: 320, height: 524)
		accountScrollView.frame.size = CGSize(width: 320, height: 524)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
