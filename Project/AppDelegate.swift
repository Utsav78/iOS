//
//  AppDelegate.swift
//  Project
//
//  Created by ebpearls on 6/8/22.
//

import UIKit

let appColor: UIColor = .systemTeal

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
  
    
    var window: UIWindow?
    let loginViewController = LoginViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()
    let dummyViewController = DummyViewController()
    let mainViewController = MainViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        //window?.rootViewController = LoginViewController()
        //window?.rootViewController = OnboardingContainerViewController()
        //window?.rootViewController = OnboardingContainerViewController()
        loginViewController.delegate = self
        onboardingContainerViewController.delegate = self
        dummyViewController.delegate = self
        window?.rootViewController = mainViewController


        
        return true
        
    
    }


}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        
        if LocalState.hasOnboarded {
            setRootViewController(dummyViewController)
        }else {
            setRootViewController(onboardingContainerViewController)

            
        }
        
    }
    
    
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        LocalState.hasOnboarded = true
        setRootViewController(dummyViewController)
    }
    
}

extension AppDelegate: LogoutViewControllerDelegate {
    func didLogout() {
        setRootViewController(loginViewController)
    }
    
    
}

extension AppDelegate {
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }
        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: nil,
                          completion: nil)
    }
}

