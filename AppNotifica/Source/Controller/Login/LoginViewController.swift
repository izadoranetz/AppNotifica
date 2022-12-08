//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Izadora Netz.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    //MARK - Clousures
    var onRegisterTap: (()-> Void)?
    var onLoginTap: (() -> Void)?

    //cria uma variável que é do tipo LoginView
    //lazy para a criação da variável ficar mais flexívels
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        
        return loginView
    }()
    
       override func loadView(){
           self.view = loginView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Logar"
    

       }

}