//
//  TelaBViewModel.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

protocol TelaBViewModelDelegate: AnyObject {
    
    func configureTelaBView(with telaModel: TelaModel)
}

class TelaBViewModel {
    
    weak var delegate: TelaBViewModelDelegate?
    
    let telaBInfos = TelaModel(
        labelText: "Tela B",
        buttonText: "Ir para Tela C"
    )
    
    func getTelaBInfos() {
        
        delegate?.configureTelaBView(with: telaBInfos)
    }
}
