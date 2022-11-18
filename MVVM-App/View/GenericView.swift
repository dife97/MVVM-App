//
//  GenericView.swift
//  MVVM-App
//
//  Created by Diego Ferreira on 17/11/22.
//

import UIKit

protocol GenericViewDelegate: AnyObject {
    
    func didTapNavigateButton()
}

class GenericView: UIView {
    
    weak var delegate: GenericViewDelegate?
    
    //MARK: - Properties
    var labelText: String? {
        didSet {
            if let labelText = labelText {
                mainLabel.text = labelText
            }
        }
    }
    
    var buttonText: String? {
        didSet {
            if let buttonText = buttonText {
                mainButton.setTitle(buttonText, for: .normal)
            }
        }
    }
    
    var buttonAction: (() -> Void)?
    
    //MARK: - UI Components
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textColor = .label
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = labelText
        
        return label
    }()
    
    private lazy var mainButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.backgroundColor = .systemPink
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        button.addTarget(self, action: #selector(didTapMainButton), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - View Configuration
    private func configureView() {
        
        configureMainButton()
        
        configureMainLabel()
        
        additionalConfiguration()
    }
    
    private func configureMainButton() {
        
        addSubview(mainButton)
        
        NSLayoutConstraint.activate([
            mainButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            mainButton.widthAnchor.constraint(equalToConstant: 200),
            mainButton.heightAnchor.constraint(equalToConstant: 56),
        ])
    }
    
    private func configureMainLabel() {
        
        addSubview(mainLabel)
        
        NSLayoutConstraint.activate([
            mainLabel.bottomAnchor.constraint(equalTo: mainButton.topAnchor, constant: -40),
            mainLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            mainLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
    private func additionalConfiguration() {
        
        backgroundColor = .systemBackground
    }
    
    //MARK: - Actions
    @objc private func didTapMainButton() {
        
        delegate?.didTapNavigateButton()
    }
}
