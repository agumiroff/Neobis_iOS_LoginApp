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
    
    let topTitle = CustomTitle(text: "Lorem ipsum",
                                  color: .white)
    let bottomTitle = CustomTitle(text: "Lorem ipsum",
                                  color: .white)
    let userNameButton = CustomButton(buttonName: "Username",
                                      color: UIColor(RGBcolor: Constants.Buttons.loginButtonColor),
                                      textColor: .white)
    let passwordButton = CustomButton(buttonName: "Password",
                                      color: UIColor(RGBcolor: Constants.Buttons.loginButtonColor),
                                      textColor: .white)
    let submitButton = CustomButton(buttonName: "Sign in",
                                    color: UIColor(RGBcolor: Constants.Buttons.submitButton),
                                    textColor: .black)
    
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
        setupLoginButtons()
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
    
    //MARK: Buttons setup
    func setupLoginButtons() {
        
        view.addSubview(userNameButton)
        view.addSubview(passwordButton)
        
        
        userNameButton.translatesAutoresizingMaskIntoConstraints = false
        passwordButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            passwordButton.topAnchor.constraint(equalTo: userNameButton.bottomAnchor,
                                                constant: 20),
            passwordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                    constant: Constants.Sizes.standartPadding),
            passwordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                     constant: -Constants.Sizes.standartPadding),
            passwordButton.heightAnchor.constraint(equalToConstant: 80),
            
            
            userNameButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor,
                                                constant: 50),
            userNameButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                    constant: Constants.Sizes.standartPadding),
            userNameButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                     constant: -Constants.Sizes.standartPadding),
            userNameButton.heightAnchor.constraint(equalToConstant: 80),
            
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
    
    //MARK: Titles setup
    func topTitleSetup() {
        
        view.addSubview(topTitle)
        
        topTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topTitle.topAnchor.constraint(equalTo: passwordButton.bottomAnchor,
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
    
}
