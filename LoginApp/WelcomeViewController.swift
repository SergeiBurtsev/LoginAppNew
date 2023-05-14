
import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    private var user: User {
        return User.getUser()
    }
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
//            self.showMainController()
//        }
        welcomeLabel.text = "Welcome, \(user.person.name)!"
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let mainTabBarCointroller = segue.destination as? MainTabBarController else {
//            return
//        }
//
//        present(mainTabBarCointroller, animated: true)
//    }
    
    
//    private func showMainController() {
//        guard let tabbarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MainTabBarControllerID") as? MainTabBarController else { return }
//        //let tabBarController = MainTabBarController(nibName: nil, bundle: nil)
//        //tabBarController.modalPresentationStyle = .overCurrentContext
//        present(tabbarController, animated: true)
//    }
}

