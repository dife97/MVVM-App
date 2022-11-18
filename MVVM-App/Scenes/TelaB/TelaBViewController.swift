//
//  TelaBViewController.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

import UIKit

class TelaBViewController: UIViewController {
    
    private lazy var telaBViewModel: TelaBViewModel = {
        let telaBViewModel = TelaBViewModel()
        
        telaBViewModel.delegate = self
        
        return telaBViewModel
    }()

    private lazy var telaBView: GenericView = {
        let view = GenericView()
        
        view.delegate = self
        
        return view
    }()
    
    override func loadView() {
        
        view = telaBView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        telaBViewModel.getTelaBInfos()
    }
}

extension TelaBViewController: TelaViewModelDelegate {
    
    func configureTelaView(with telaModel: TelaModel) {
        
        telaBView.labelText = telaModel.labelText
        
        telaBView.buttonText = telaModel.buttonText
    }
}

extension TelaBViewController: GenericViewDelegate {
    
    func didTapNavigateButton() {
        
        let telaCViewController = TelaCViewController()

        navigationController?.pushViewController(telaCViewController, animated: true)
    }
}
