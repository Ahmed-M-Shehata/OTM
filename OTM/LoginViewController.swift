//
//  LoginViewController.swift
//  OTM
//
//  Created by Ahmed Shehata on 8/24/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Properties
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Set TextField Delegate */
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        //citation: http://stackoverflow.com/questions/32281651/how-to-dismiss-keyboard-when-touching-anywhere-outside-uitextfield-in-swift
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.tap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    
    // MARK: - Text Field Delegate Method
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == emailTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            loginWithUdacityCredentials()
        }
        return true
    }
    
    
    // MARK: - Actions
    
    @IBAction func loginButtonTouch(sender: AnyObject) {
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            presentViewController(alert("Empty Email or Password"), animated: true, completion: nil)
        } else {
            loginWithUdacityCredentials()
        }
    }
    
    
    @IBAction func signUpButtonTouch(sender: UIButton) {
        // citation: http://stackoverflow.com/questions/26938495/make-button-hyperlink-swift
        if let url = NSURL(string: "https://www.udacity.com/account/auth#!/signup") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    
    // MARK: - Helper Functions
    
    func completeLogin() {
        performUIUpdatesOnMain {
            let controller = self.storyboard!.instantiateViewControllerWithIdentifier("TabBarNavController") as! UINavigationController
            self.presentViewController(controller, animated: true, completion: nil)
        }
    }
    
    func loginWithUdacityCredentials() {
        
        UserInformation.user.userEmail = emailTextField.text!
        UserInformation.user.userPassword = passwordTextField.text!
        
        UdacityClient.sharedInstance().authenticate(nil) { (success, errorString) in
            if success {
                self.completeLogin()
            } else {
                performUIUpdatesOnMain {
                    self.presentViewController(alert(errorString!), animated: true, completion: nil)
                }
            }
        }
    }
    
    
    /* Dismiss keyboard if user touches outside the textfields */
    func tap(gesture: UITapGestureRecognizer) {
        if emailTextField.isFirstResponder() == true {
            emailTextField.resignFirstResponder()
        } else {
            passwordTextField.resignFirstResponder()
        }
    }
}