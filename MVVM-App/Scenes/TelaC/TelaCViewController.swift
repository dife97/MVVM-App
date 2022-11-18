//
//  TelaCViewController.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

import UIKit

class TelaCViewController: UIViewController {
    
    private lazy var telaCViewModel: TelaCViewModel = {
        let telaCViewModel = TelaCViewModel()
        
        telaCViewModel.delegate = self
        
        return telaCViewModel
    }()

    private lazy var telaCView: GenericView = {
        let view = GenericView()
        
        view.delegate = self
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        telaCViewModel.getTelaCInfos()
    }
    
    override func loadView() {
        
        view = telaCView
    }
}

extension TelaCViewController: TelaCViewModelDelegate {
    
    func configureTelaCView(with telaModel: TelaModel) {
        
        telaCView.labelText = telaModel.labelText
        
        telaCView.buttonText = telaModel.buttonText
    }
}

extension TelaCViewController: GenericViewDelegate {
    
    func didTapNavigateButton() {
        
        navigationController?.popToRootViewController(animated: true)
    }
}
