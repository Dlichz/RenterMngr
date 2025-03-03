//
//  DashboardViewController.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 22/04/24.
//

import UIKit

class DashboardViewController: UIViewController {
    
    var presenter: Dashboard_ViewToPresenterProtocol?
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Crear un UIViewController que actuará como el controlador de vista raíz del UINavigationController
        let rootViewController = TenantListRouter.createModule()
        rootViewController.view.backgroundColor = .white
        rootViewController.title = "Inquilinos"
        
        // Crear el UINavigationController con el controlador de vista raíz
        let navigationController = UINavigationController(rootViewController: rootViewController)
        
        addChild(navigationController)
        view.addSubview(navigationController.view)
        navigationController.didMove(toParent: self)
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension DashboardViewController: Dashboard_PresenterToViewProtocol {
}
