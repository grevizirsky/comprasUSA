//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Adriano Grevizirsky on 03/01/22.
//

import UIKit

class SettingsViewController: UIViewController {
    //MARK: Outlets Settings
    
    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOF.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfStateTaxes.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOF.text!)
        tc.stateTax = tc.convertToDouble(tfStateTaxes.text!)
    }
    
}


extension SettingsViewController: UITextFieldDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
