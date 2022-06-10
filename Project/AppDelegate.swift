//
//  AppDelegate.swift
//  Project
//
//  Created by ebpearls on 6/8/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    let loginViewController = LoginViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        //window?.rootViewController = LoginViewController()
        //window?.rootViewController = OnboardingContainerViewController()
        //window?.rootViewController = OnboardingContainerViewController()
        loginViewController.delegate = self
        onboardingContainerViewController.delegate = self
        window?.rootViewController = onboardingContainerViewController


        
        return true
        
    
    }


}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("did login successfully")
    }
    
    
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        print("foo - Did onboard")
    }
    
    
}

