//
//  TenantListPresenter.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 23/04/24.
//

import Foundation

class TenantListPresenter: TenantList_ViewToPresenterProtocol {
    
    weak var view: TenantList_PresenterToViewProtocol?
    var interactor: TenantList_PresenterToInteractorProtocol?
    var router: TenantList_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension TenantListPresenter: TenantList_InteractorToPresenterProtocol {

}
