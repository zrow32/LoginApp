//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Vladimir Zhirov on 11/26/19.
//  Copyright © 2019 Vladimir Zhirov. All rights reserved.
//

import UIKit


class LogInViewController: UIViewController {
    
    private var userName = "Vlad"
    private var password = "iiii"
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 17
        userNameTextField.clipsToBounds = true
        
        passwordTextField.layer.cornerRadius = 17
        passwordTextField.clipsToBounds = true
        passwordTextField.isSecureTextEntry = true
    }
    
    
    // MARK: - Navigation
    
    @IBAction func unwind( segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.welcome = userNameTextField.text
    }
    
    
    // MARK: - Buttons pressed functions
    
    @IBAction func loginButtonPressed() {
        if userNameTextField.text == userName &&
            passwordTextField.text == password {
            performSegue(withIdentifier: "goToWelcome", sender: self)
        } else {
            popUpAlert(title: "Invalid login or pasword", message: "Please, enter correct login or password")
        }
    }
    
    @IBAction func forgotNameButton() {
        popUpAlert(title: "Ooops!", message: "Your name is Vlad")
    }
    
    @IBAction func forgotPasswordButton() {
        popUpAlert(title: "Ooops!", message: "Your password is iiii")
    }
    
    
    // MARK: - Function for alertControllers
    
    func popUpAlert (title: String, message: String) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
        
        return alert
    }
}
