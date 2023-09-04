//
//  FinalViewController.swift
//  iosApp
//
//

import UIKit
import JetPayMSDKCore
import SwiftSpinner
import Toaster
import WebKit

class FinalViewController: UIViewController {
    
    @IBOutlet weak var payment: UILabel!
    
    public var paymetnJson: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        payment.text = paymetnJson
    }
}
