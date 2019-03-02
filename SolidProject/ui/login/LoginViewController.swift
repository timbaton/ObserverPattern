//
//  LoginViewController.swift
//  SolidProject
//
//  Created by Тимур Бадретдинов on 24/02/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController, LoginInput {
    
    var presenter: LoginOutput! = nil
    
    @IBOutlet weak var tiLogin: UITextField!
    @IBOutlet weak var tiPassword: UITextField!
    
    @IBOutlet weak var viewHolder: UIView!
    
    @IBAction func btnEnter(_ sender: Any) {
        presenter.didEnterPressed(login: tiLogin.text!, password: tiPassword.text!)
    }
    
    func showProfile(user: User) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileScreen") as! ProfileViewController; // MySecondSecreen the storyboard ID
        vc.user = user
        self.present(vc, animated: true, completion: nil);
    }
    
    override func changeIntoWhite() {
        view.backgroundColor = .white
        viewHolder.backgroundColor = .white
        
        
        self.tabBarController?.tabBar.barTintColor = UIColor.white
        
        self.tabBarController?.tabBar.tintColor = UIColor.black
        if #available(iOS 10.0, *) {
            self.tabBarController?.tabBar.unselectedItemTintColor? = UIColor.gray
        }
    }
    
    override func changeIntoBlack() {
        view.backgroundColor = .gray
        viewHolder.backgroundColor = .gray
        
        self.tabBarController?.tabBar.barTintColor = UIColor.gray
        
        self.tabBarController?.tabBar.tintColor = UIColor.white
        if #available(iOS 10.0, *) {
            self.tabBarController?.tabBar.unselectedItemTintColor? = UIColor.white
        }
    }
}
