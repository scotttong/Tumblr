//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Scott Tong on 3/7/15.
//  Copyright (c) 2015 Scott Tong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

	@IBOutlet weak var loginBackground: UIView!
	@IBOutlet weak var loginForm: UIImageView!
	@IBOutlet weak var emailTextField: UITextField!
	
	var fadeTransition: FadeTransition!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		loginBackground.alpha = 0.9
		emailTextField.becomeFirstResponder()
		
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func didPressCancelButton(sender: AnyObject) {
		dismissViewControllerAnimated(true, completion: nil)
	}

	
    // MARK: - Navigation

	/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }*/
	

}
