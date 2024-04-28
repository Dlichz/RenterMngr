//
//  TenantListProtocols.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 23/04/24.
//

import Foundation

// MARK: VIEW -> PRESENTER
protocol TenantList_ViewToPresenterProtocol: AnyObject {
	var view: TenantList_PresenterToViewProtocol? { get set }
	var interactor: TenantList_PresenterToInteractorProtocol? { get set }
	var router: TenantList_PresenterToRouterProtocol? { get set }
}

// MARK: PRESENTER -> INTERACTOR
protocol TenantList_PresenterToInteractorProtocol: AnyObject {
    var presenter: TenantList_InteractorToPresenterProtocol? { get set }
}

// MARK: INTERACTOR -> PRESENTER
protocol TenantList_InteractorToPresenterProtocol: AnyObject {
}

// MARK: PRESENTER -> VIEW
protocol TenantList_PresenterToViewProtocol: AnyObject {
    var presenter: TenantList_ViewToPresenterProtocol? { get set }
}

// MARK: PRESENTER -> ROUTER
protocol TenantList_PresenterToRouterProtocol: AnyObject {
}
