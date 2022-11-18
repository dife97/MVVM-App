//
//  TelaCViewModel.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

class TelaCViewModel {
    
    weak var delegate: TelaViewModelDelegate?
    
    let telaCInfos = TelaModel(
        labelText: "Tela C",
        buttonText: "Voltar para Tela A"
    )
    
    func getTelaCInfos() {
        
        delegate?.configureTelaView(with: telaCInfos)
    }
}
