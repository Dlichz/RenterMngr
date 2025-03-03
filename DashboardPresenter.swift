//
//  DashboardPresenter.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 22/04/24.
//

import Foundation

class DashboardPresenter: Dashboard_ViewToPresenterProtocol {
    
    weak var view: Dashboard_PresenterToViewProtocol?
    var interactor: Dashboard_PresenterToInteractorProtocol?
    var router: Dashboard_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension DashboardPresenter: Dashboard_InteractorToPresenterProtocol {

}
