//
//  TelaAViewModel.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

class TelaAViewModel {
    
    weak var delegate: TelaViewModelDelegate?
    
    private let telaAInfos = TelaModel(
        labelText: "Tela A",
        buttonText: "Ir para Tela B"
    )
    
    func getTelaAInfos() {
        
        delegate?.configureTelaView(with: telaAInfos)
    }
}
