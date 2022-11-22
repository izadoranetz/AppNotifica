//
//  ViewController.swift
//  MeuPrimeiroApp
//
//  Created by IFB BIOTIC 06 on 20/10/22.
//

import UIKit

// classe ViewController que herda de UIViewController
class ViewController: UIViewController {

    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var textSenha: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createLivros() {
        let livro1 = Livro(name: "O Perfume", imageName: "operfume", isMyFavorite: true)
        let livro2 = Livro(name: "o Estrangeiro", imageName: "oestrangeiro", isMyFavorite: true)
        let livro3 = Livro(name: "O apanhador no campo de centeio", imageName: "oapanhador", isMyFavorite: true)
        
        DataLivro.livro.append(livro1)
        DataLivro.livro.append(livro2)
        DataLivro.livro.append(livro3)
    }

    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "andorinea@gmail.com" && textSenha.text == "1234"){
            DataLivro.livro.removeAll()
            createLivros()
            performSegue(withIdentifier: "Tela2", sender: self)
            
        }else{
            
            let alert = UIAlertController(title: "Erro no login/senha", message: "Verifique seus dados e tente novamente", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style:  UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
}

