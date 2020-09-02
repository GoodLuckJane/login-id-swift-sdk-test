//
//  ViewController.swift
//  HelloWorldSwift
//
//  Created by Zhenying Zhang on 2020-09-01.
//  Copyright © 2020 Zhenying Zhang. All rights reserved.
//

import UIKit
import LoginSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Test loginID sdk start
        print("Hello Jane from View Controller")
        let result = LoginApi.client.hasAccount()
        print("result: \(result)")
        // return YES or NO
        let baseUrl = LoginApi.client.getBaseURL()
        print("base url: \(baseUrl)")
        if(result){
            // get current username example
            let username = LoginApi.client.getCurrentUsername()
            print("user has an account, the account username is: \(username)")
            // check if user has active login session
            if(LoginApi.client.isLoggedIn()){
                // get current token example
                let token = LoginApi.client.getCurrentToken()
                print("user is logged in, and the token is: \(token)")
                print("Now log the user out to test logout and login")
                LoginApi.client.logout()
            } else {
                // can setup login user here
                //present login option here
                print("user is NOT logged in, log the user in now")
                 LoginApi.client.login(onComplete: { (response) in
                     if(response.success){
                         // handle success case here
                        print("login success: \(response)")
                     } else {
                         // handle error case here
                         print("login failed with error message: ",response.errorMessage)
                     }
                 })
            }
        } else {
            // user has no account so can setup register user logic here
            print("user doesn't have an account, register now")
            LoginApi.client.register(username: "Jane1", onComplete: { (response) in
                if(response.success){
                    // handle success case here
                    print("registered successfully!, the response is: ",response)
                     // ask user to relogin if successfully logged in
                     LoginApi.client.login(onComplete: { (response) in
                         if(response.success){
                             // handle success case here
                         } else {
                             // handle error case here
                             print(response.errorMessage)
                         }
                     })
                } else {
                    // handle error case here
                    print("registration error message",response.errorMessage)
                    print("registration error code", response.errorCode)
                    print("registration error ", response)
                }
            })
        }
        // LoginApi.client.logout()
    }
    // Test loginID sdk end

}

