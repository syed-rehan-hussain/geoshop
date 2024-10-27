//
//  LoginViewController.swift
//  geoshop
//
//  Created by Mac on 19/10/2024.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnLoginAction(_ sender: Any) {
        if let tabBarVC = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as? UITabBarController {
                       tabBarVC.modalPresentationStyle = .fullScreen
                       present(tabBarVC, animated: true, completion: nil)
                   }
    }
    

}
