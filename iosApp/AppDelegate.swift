//
//  AppDelegate.swift
//  iosApp
//
//

import UIKit
import JetPayMSDKCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    public static var msdkSession: MSDKCoreSession? = nil
    public let appCoordinator = AppCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        let msdkConfig = MSDKCoreSessionConfig.companion.debug(apiHost: "sdk.jetpay.kz", wsApiHost: "paymentpage.jetpay.kz")
        //for mocking requests
        let msdkMockConfig = MSDKCoreSessionConfig.companion.mockFullSuccessFlow(duration: Duration.companion.seconds(seconds: 2))
        AppDelegate.msdkSession = MSDKCoreSession(config: msdkConfig)
        appCoordinator.start()
        
        return true
    }

}

