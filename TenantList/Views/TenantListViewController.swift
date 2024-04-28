//
//  TenantListViewController.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 23/04/24.
//

import UIKit

class TenantListViewController: UIViewController {
    
    let buscador = SearcherView()
    
    lazy var tableViewContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private (set) lazy var productListTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.clipsToBounds = true
        tableView.layer.masksToBounds = true
        tableView.layer.cornerRadius = 12
        tableView.isScrollEnabled = false
        tableView.register(TenantInfoViewCell.self,
                           forCellReuseIdentifier: TenantInfoViewCell.reuseIdentifier)
        return tableView
    }()
    
    lazy var filtersView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var buttonContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var addTenantButton: UIButton = {
        let button = UIButton()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    var presenter: TenantList_ViewToPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    func setupConstraints(){
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            buscador.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
            buscador.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buscador.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buscador.heightAnchor.constraint(equalToConstant: 60),
            
            filtersView.topAnchor.constraint(equalTo: buscador.bottomAnchor, constant: 16),
            filtersView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            filtersView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            filtersView.heightAnchor.constraint(equalToConstant: 60),
            
            buttonContainer.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: 0),
            buttonContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonContainer.heightAnchor.constraint(equalToConstant: 60),
            
            productListTableView.topAnchor.constraint(equalTo: filtersView.topAnchor, constant: 16),
            productListTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            productListTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            productListTableView.bottomAnchor.constraint(equalTo: buttonContainer.topAnchor, constant: 0)
            
        ])
    }
    
    func setupView(){
        self.view.addSubview(buscador)
        self.view.addSubview(productListTableView)
        self.view.addSubview(buttonContainer)
        self.view.addSubview(filtersView)
        
        buscador.translatesAutoresizingMaskIntoConstraints = false
    }
}
extension TenantListViewController: TenantList_PresenterToViewProtocol {
}

