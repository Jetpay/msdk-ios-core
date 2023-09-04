//
//  ClarificationFieldsCoordinator.swift
//  iosApp
//
//

import Foundation
import UIKit
import JetPayMSDKCore

class ClarificationFieldsCoordinator: BaseCoordinator {
    
    var clarificationFields: [ClarificationField] = []
    
    override func start() {
        let viewController = R.storyboard.clarificationFields.clarificationFieldsTableViewController()!
        viewController.clarificationFields = clarificationFields
        viewController.coordinator = self
        self.navigationController.viewControllers.append(viewController)
    }

}

