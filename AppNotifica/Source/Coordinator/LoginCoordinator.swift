import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator implementem o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
     //chama a login
     let viewController = LoginViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onRegisterTap = {
              self.gotoRegister()
          }
          
          viewController.onLoginTap = {
              self.gotoLogin()
          }
    }
    
    //função que chama a registerView
    func  gotoRegister() {
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
        //função que chama a registerView
        func  gotoLogin() {
           let coordinator = TabbarCoordinator(navigationController: navigationController)
            coordinator.start()
        }
}