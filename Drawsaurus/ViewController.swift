//
//  ViewController.swift
//  Drawsaurus
//
//  Created by Shark on 2015-08-09.
//  Copyright (c) 2015 JRC. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {
    let permissions = ["public_profile", "email", "user_friends"]
    
    @IBAction func didTapFacebookConnect(sender: AnyObject) {
        PFFacebookUtils.logInInBackgroundWithReadPermissions(permissions,  block: {  (user: PFUser?, error: NSError?) -> Void in
            if let user = user {
                if user.isNew {
                    println("User signed up and logged in through Facebook!")
                } else {
                    println("User logged in through Facebook!")
                }
            } else {
                println("Uh oh. The user cancelled the Facebook login.")
            }
        })
    }
    
    @IBAction func didTapFacebookLogout(sender:AnyObject) {
        if PFUser.currentUser() != nil {
            PFUser.logOut()
            println("User logs out")
        }
    }

//    @IBAction func fbLoginClick(sender: AnyObject) {
//        PFFacebookUtils.logInWithPermissions(self.permissions, block: {
//            (user: PFUser?, error: NSError?) -> Void in
//            if user == nil {
//                println("Uh oh. The user cancelled the Facebook login.")
//            } else if user!.isNew {
//                println("User signed up and logged in through Facebook!")
//            } else {
//                println("User logged in through Facebook! \(user!.username)")
//        
//            }
//        })
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        if (FBSDKAccessToken.currentAccessToken() == nil) {
//            println("Not logged in")
//        } else {
//            println("Logged in")
//        }
//        
//        var loginButton = FBSDKLoginButton()
//        loginButton.readPermissions = ["public_profile", "email", "user_friends"]
//        loginButton.center = self.view.center
//        
//        loginButton.delegate = self
//        self.view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
//        if (error == nil) {
//            println("Login complete")
//        } else {
//            println("Login failed")
//        }
//    }
//    
//    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
//        println("User did log out")
//    }

}

