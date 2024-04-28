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
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension DashboardViewController: Dashboard_PresenterToViewProtocol {
}
