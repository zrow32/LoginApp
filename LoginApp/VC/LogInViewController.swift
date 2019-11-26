//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Vladimir Zhirov on 11/26/19.
//  Copyright © 2019 Vladimir Zhirov. All rights reserved.
//

import UIKit


class LogInViewController: UIViewController {
    
    private let userName = "Vlad"
    private let password = "iiii"
    
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
    
    
    @IBAction func unwind( segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    // MARK: - Buttons pressed functions
    
    @IBAction func loginButtonPressed() {
        if userNameTextField.text == userName &&
            passwordTextField.text == password {
            performSegue(withIdentifier: "goToWelcome", sender: self)
        } else {
            let alert = UIAlertController(title: "Invalid login or pasword", message: "Please, enter correct login or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    @IBAction func forgotNameButton() {
        let alert = UIAlertController(title: "Ooops!", message: "Your name is Vlad", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButton() {
        let alert = UIAlertController(title: "Ooops!", message: "Your password is i", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.welcome = userNameTextField.text
    }
}
