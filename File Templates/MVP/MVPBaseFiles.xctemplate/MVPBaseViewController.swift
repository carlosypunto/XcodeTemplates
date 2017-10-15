//___FILEHEADER___

import UIKit

class MVPBaseViewController<Presenter: MVPBasePresenterInterface>: UIViewController {
    
    var eventHandler: Presenter!
    
    final override func viewDidLoad() {
        super.viewDidLoad()
        eventHandler?.prepareView(forState: .didLoad)
    }
    
    final override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        eventHandler?.prepareView(forState: .willAppear)
    }
    
    final override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        eventHandler?.prepareView(forState: .didAppear)
    }
    
    final override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        eventHandler?.prepareView(forState: .willDisappear)
    }
    
    final override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        eventHandler?.prepareView(forState: .didDisappear)
    }
    
    final override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        eventHandler.wireframe.prepare(for: segue, sender: sender)
    }
    
}
