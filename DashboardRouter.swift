//
//  DashboardRouter.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 22/04/24.
//

import UIKit

class DashboardRouter {
	
    static func createModule() -> UIViewController {
        
        let view = DashboardViewController()
        let presenter = DashboardPresenter()
        let interactor = DashboardInteractor()
        let router = DashboardRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension DashboardRouter: Dashboard_PresenterToRouterProtocol {
    
}
