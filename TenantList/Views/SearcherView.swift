//
//  SearcherView.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 25/04/24.
//

import UIKit
import Combine


class SearcherView: UIView {
    
    lazy var inactiveViewContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var viewContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.attributedPlaceholder = "Ingresa un código postal"
        textField.borderStyle = .none
        textField.keyboardType = .asciiCapable
        return textField
    }()
    
    lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var cancellable = Set<AnyCancellable>()
    private(set) var inputText = PassthroughSubject<String, Never>()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commoninit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commoninit()
    }
    
    deinit { NotificationCenter.default.removeObserver(self) }
    
    private func commoninit(){
        setupUI()
//        NotificationCenter
//            .default
//            .publisher(for: UITextField.textDidChangeNotification, object: textField)
//            .compactMap { ($0.object as? GSVCTextField)?.text }
//            .sink { [weak self] text in
//                self?.inputText.send(text)
//            }
//            .store(in: &cancellable)
    }
    
    private func setupUI() {
        addSubview(inactiveViewContainer)
        inactiveViewContainer.addSubview(viewContainer)
        viewContainer.addSubview(iconImageView)
        viewContainer.addSubview(textField)
        textField.borderStyle = .none
        
        NSLayoutConstraint.activate([
            inactiveViewContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            inactiveViewContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            inactiveViewContainer.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            inactiveViewContainer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            inactiveViewContainer.heightAnchor.constraint(equalToConstant: 60),
            
            viewContainer.leadingAnchor.constraint(equalTo: inactiveViewContainer.leadingAnchor, constant: 2),
            viewContainer.trailingAnchor.constraint(equalTo: inactiveViewContainer.trailingAnchor, constant: -2),
            viewContainer.topAnchor.constraint(equalTo: inactiveViewContainer.topAnchor, constant: 2),
            viewContainer.bottomAnchor.constraint(equalTo: inactiveViewContainer.bottomAnchor, constant: -2),
            viewContainer.heightAnchor.constraint(equalToConstant: 56),

            iconImageView.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant: -12),
            iconImageView.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 20),
            
            textField.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor),
            textField.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant: -22),
            textField.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 16)
        ])
        
        layer.cornerRadius = 16
        layer.masksToBounds = true
        
        viewContainer.layer.cornerRadius = 16
        viewContainer.layer.masksToBounds = true
    
    }

}

extension SearcherView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let currentText = textField.text else { return true }
        let newText = NSString(string: currentText).replacingCharacters(in: range, with: string)
        return newText.count <= 5
    }
}
