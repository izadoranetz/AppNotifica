//
//  LoginView.swift
//  AppNotifica
//
//  Created by Dario Pintor on 14/10/22.
//

import Foundation
import UIKit

class LoginView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .lightGray
            setupVisualElements()
        }
    
    //incluindo as configurações da imagem da tela de login
    var imageLogin: UIImageView = {
        let imagem = UIImageView ()
        imagem.image = UIImage(named: "ImageLogin")
        imagem.contentMode = .scaleAspectFit
        imagem.translatesAutoresizingMaskIntoConstraints = false
        
        return imagem
    }()
    
    
    //cria função com as propriedades da label do login
    var imageLabel: UILabel = {
        let label = UILabel ()
        label.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Light", size: 16)
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var emailTextField: UITextField = {
        let email = UITextField ()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "E-mail"
        
        return email
    }()
    
    var senhaTextField: UITextField = {
        let senha = UITextField ()
        senha.translatesAutoresizingMaskIntoConstraints = false
        senha.text = "Senha"
        return senha
    }()
    
    
    //lembrar de chamar a função dentro da classe loginview
    func setupVisualElements() {
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        
        NSLayoutConstraint.activate([
            
            //alinhamento para a imagem
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 238),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            //alinhamento para o subtitulo
            imageLabel.widthAnchor.constraint(equalToConstant: 285),
            imageLabel.heightAnchor.constraint(equalToConstant: 19),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 2),
            
            //alinhamento campo de texto email
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 44),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            emailTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 392),
            
            //alinhamento campo de texto senha
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 44),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
