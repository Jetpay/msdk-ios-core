//
//  ApsCoordinator.swift
//  iosApp
//
//

import Foundation
import UIKit
import JetPayMSDKCore

class ApsCoordinator: BaseCoordinator {
    
    override func start() {
        let viewController = R.storyboard.aps.apsViewController()!
        viewController.coordinator = self
        self.navigationController.viewControllers.append(viewController)
    }

}

