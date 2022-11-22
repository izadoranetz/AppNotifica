//
//  Livro.swift
//  MeuPrimeiroApp
//
//  Created by IFB BIOTIC 06 on 27/10/22.
//

import Foundation

class Livro {
    var name: String
    var imageName: String
    var isMyFavorite: Bool
    
    init(name:String, imageName: String, isMyFavorite: Bool){
        self.name = name
        self.imageName = imageName
        self.isMyFavorite = isMyFavorite
        
    }
}
