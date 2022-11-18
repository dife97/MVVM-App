//
//  TelaAViewModel.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

protocol TelaAViewModelDelegate: GenericViewDelegate {
    
    func configureTelaAView(with telaModel: TelaModel)
}

class TelaAViewModel {
    
    weak var delegate: TelaAViewModelDelegate?
    
    private let telaAInfos = TelaModel(
        labelText: "Tela A",
        buttonText: "Ir para Tela B"
    )
    
    func getTelaAInfos() {
        
        delegate?.configureTelaAView(with: telaAInfos)
    }
}
