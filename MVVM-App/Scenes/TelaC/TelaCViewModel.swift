//
//  TelaCViewModel.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

protocol TelaCViewModelDelegate: AnyObject {
    
    func configureTelaCView(with telaModel: TelaModel)
}

class TelaCViewModel {
    
    weak var delegate: TelaCViewModelDelegate?
    
    let telaCInfos = TelaModel(
        labelText: "Tela C",
        buttonText: "Voltar para Tela A"
    )
    
    func getTelaCInfos() {
        
        delegate?.configureTelaCView(with: telaCInfos)
    }
}
