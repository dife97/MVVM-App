//
//  TelaAViewController.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

import UIKit

class TelaAViewController: UIViewController {
    
    private lazy var telaAViewModel: TelaAViewModel = {
        let telaAViewModel = TelaAViewModel()
        
        telaAViewModel.delegate = self
        
        return telaAViewModel
    }()

    private lazy var telaAView: GenericView = {
        let view = GenericView()
        
        view.delegate = self
        
        return view
    }()
    
    override func loadView() {
        
        view = telaAView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        telaAViewModel.getTelaAInfos()
    }
}

extension TelaAViewController: TelaAViewModelDelegate {
    
    func configureTelaAView(with telaModel: TelaModel) {
        
        telaAView.labelText = telaModel.labelText
        
        telaAView.buttonText = telaModel.buttonText
    }
}

extension TelaAViewController: GenericViewDelegate {
    
    func didTapNavigateButton() {

        let telaBViewController = TelaBViewController()

        navigationController?.pushViewController(telaBViewController, animated: true)
    }
}
