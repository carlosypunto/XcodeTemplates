//___FILEHEADER___

import UIKit

protocol MVPBaseWireframeInterface: class {
    typealias ViewController = UIViewController
    var vc: ViewController! { get }
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

class MVPBaseWireframe: MVPBaseWireframeInterface {
    
    var vc: MVPBaseWireframeInterface.ViewController!
    
    init(viewController: MVPBaseWireframeInterface.ViewController) {
        vc = viewController
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
