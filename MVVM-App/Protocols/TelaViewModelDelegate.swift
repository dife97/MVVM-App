//
//  TelaViewModelDelegate.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 18/11/22.
//

protocol TelaViewModelDelegate: AnyObject {
    
    func configureTelaView(with telaModel: TelaModel)
}
