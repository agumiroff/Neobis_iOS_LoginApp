//
//  ViewController.swift
//  auth_page
//
//  Created by G G on 01.04.2023.
//

import UIKit

class MainScreenViewController: UIViewController {
    //MARK: Properties
    let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "envelope.open")
        imageView.tintColor = .white
        return imageView
    }()
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(RGBcolor: Constants.Buttons.submitButton)
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
        return button
    }()
    
    let topTitle = CustomTitle(text: "Lorem ipsum",
                                  color: .white)
    let bottomTitle = CustomTitle(text: "Lorem ipsum",
                                  color: .white)
    let userNameField = CustomField(fieldName: "Username",
                                      color: UIColor(RGBcolor: Constants.Buttons.loginButtonColor),
                                      textColor: .white)
    let passwordField = CustomField(fieldName: "Password",
                                      color: UIColor(RGBcolor: Constants.Buttons.loginButtonColor),
                                      textColor: .white)
    
    //MARK: ViewdidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(RGBcolor: Constants.backgroundColor)
        setupViews()
    }
    
    
}

//MARK: views setup
extension MainScreenViewController {
    
    func setupViews() {
        setupLogoImage()
        setupTextFields()
        topTitleSetup()
        submitButtonSetup()
        bottomTitleSetup()
    }
    
    //MARK: Logo setup
    func setupLogoImage() {
        
        view.addSubview(logoImage)
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.widthAnchor.constraint(equalToConstant: Constants.Sizes.logoSize),
            logoImage.heightAnchor.constraint(equalToConstant: Constants.Sizes.logoSize),
            logoImage.topAnchor.constraint(equalTo: view.topAnchor,
                                             constant: 100),
        ])
    }
    
    //MARK: TextFields setup
    func setupTextFields() {
        
        view.addSubview(userNameField)
        view.addSubview(passwordField)
        
        
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            passwordField.topAnchor.constraint(equalTo: userNameField.bottomAnchor,
                                                constant: 20),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                    constant: Constants.Sizes.standartPadding),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                     constant: -Constants.Sizes.standartPadding),
            passwordField.heightAnchor.constraint(equalToConstant: 80),
            
            
            userNameField.topAnchor.constraint(equalTo: logoImage.bottomAnchor,
                                                constant: 50),
            userNameField.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                    constant: Constants.Sizes.standartPadding),
            userNameField.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                     constant: -Constants.Sizes.standartPadding),
            userNameField.heightAnchor.constraint(equalToConstant: 80),
            
        ])
        
    }
    
  
    //MARK: Titles setup
    func topTitleSetup() {
        
        view.addSubview(topTitle)
        
        topTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topTitle.topAnchor.constraint(equalTo: passwordField.bottomAnchor,
                                           constant: 20),
            topTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    func bottomTitleSetup() {
        
        view.addSubview(bottomTitle)
        
        bottomTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomTitle.bottomAnchor.constraint(equalTo: submitButton.bottomAnchor,
                                                constant: 40),
            bottomTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    func submitButtonSetup() {
        view.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: topTitle.bottomAnchor,
                                              constant: 50),
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                  constant: Constants.Sizes.standartPadding),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                   constant: -Constants.Sizes.standartPadding),
            submitButton.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}
