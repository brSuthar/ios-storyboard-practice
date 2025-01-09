import Foundation
import UIKit


extension UIApplication {
    static func getTopViewController(base: UIViewController? = UIApplication.shared.connectedScenes
        .compactMap { $0 as? UIWindowScene }
        .first?
        .windows
        .first(where: { $0.isKeyWindow })?
        .rootViewController) -> UIViewController? {
            
            if let nav = base as? UINavigationController {
                return getTopViewController(base: nav.visibleViewController)
            } else if let tab = base as? UITabBarController {
                return getTopViewController(base: tab.selectedViewController)
            } else if let presented = base?.presentedViewController {
                return getTopViewController(base: presented)
            }
            return base
        }
}

