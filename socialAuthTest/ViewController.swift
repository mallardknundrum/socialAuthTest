//
//  ViewController.swift
//  socialAuthTest
//
//  Created by Jeremiah on 1/29/18.
//  Copyright © 2018 Jeremiah Hawks. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit


class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print(FBSDKAccessToken.current().tokenString)
        print(FBSDKAccessToken.current().permissions)
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    
    var loginButton: FBSDKLoginButton {
        let facebookLoginButton = FBSDKLoginButton()
        facebookLoginButton.center = self.view.center
        facebookLoginButton.delegate = self
        facebookLoginButton.setImage(UIImage(), for: .normal)
        facebookLoginButton.alpha = 0.1
        facebookLoginButton.loginBehavior = .web
        
        facebookLoginButton.readPermissions = ["email", "user_managed_groups", "user_posts", "read_insights", "manage_pages"]
        facebookLoginButton.publishPermissions = ["publish_actions", "publish_pages"]
        facebookLoginButton.sendActions(for: .touchUpInside)
        return facebookLoginButton
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginButton)
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        loginButton.sendActions(for: .touchUpInside)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func someFunc() {
//        FBSDKLoginManager().logIn(withPublishPermissions: <#T##[Any]!#>, from: <#T##UIViewController!#>, handler: <#T##FBSDKLoginManagerRequestTokenHandler!##FBSDKLoginManagerRequestTokenHandler!##(FBSDKLoginManagerLoginResult?, Error?) -> Void#>)
    }


}

