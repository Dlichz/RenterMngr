//
//  TenantListRouter.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 23/04/24.
//

import UIKit

class TenantListRouter {
	
    static func createModule() -> UIViewController {
        
        let view = TenantListViewController()
        let presenter = TenantListPresenter()
        let interactor = TenantListInteractor()
        let router = TenantListRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension TenantListRouter: TenantList_PresenterToRouterProtocol {
    
}
