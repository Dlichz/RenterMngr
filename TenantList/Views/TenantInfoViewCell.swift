//
//  TenantInfoViewCell.swift
//  RenterMngr
//
//  Created by Francisco David Zárate Vásquez on 23/04/24.
//

import UIKit

enum StatusPayment: String {
    case pendiente, pagado, moroso
}

class TenantInfoViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nombreTitulo: UILabel!
    @IBOutlet weak var fechaPagoLabel: UILabel!
    @IBOutlet weak var montoPagoLabel: UILabel!
    static let reuseIdentifier = String(describing: TenantInfoViewCell.self)
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell(by status: StatusPayment) {
        nombreTitulo?.text = status.rawValue
        switch status {
        case .pendiente:
            self.backgroundColor = .red
            self.nombreTitulo.text = "Rojo"
        case .pagado:
            self.backgroundColor = .black
        case .moroso:
            self.backgroundColor = .green
        }
    }
    
    
    
}
