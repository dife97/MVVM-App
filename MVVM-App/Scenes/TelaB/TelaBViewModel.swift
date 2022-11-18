//
//  TelaBViewModel.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

class TelaBViewModel {
    
    weak var delegate: TelaViewModelDelegate?
    
    let telaBInfos = TelaModel(
        labelText: "Tela B",
        buttonText: "Ir para Tela C"
    )
    
    func getTelaBInfos() {
        
        delegate?.configureTelaView(with: telaBInfos)
    }
}
