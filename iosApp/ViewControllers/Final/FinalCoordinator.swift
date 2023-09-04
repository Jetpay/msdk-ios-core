//
//  FinalCoordinator.swift
//  iosApp
//
//

import Foundation
import UIKit
import JetPayMSDKCore

class FinalCoordinator: BaseCoordinator {
    
    var payment: Payment!
    
    override func start() {
        let viewController = R.storyboard.final.finalViewController()!
        viewController.paymetnJson = payment.json
        self.navigationController.viewControllers.append(viewController)
    }

}
