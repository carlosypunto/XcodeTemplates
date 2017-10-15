//___FILEHEADER___

import UIKit

enum ViewControllerLivecicleState: Int {
    case didLoad, willAppear, didAppear, willDisappear, didDisappear
    init() {
        self = .didLoad
    }
}

protocol MVPBasePresenterInterface: class {
    typealias Wireframe = MVPBaseWireframeInterface
    weak var wireframe: Wireframe! { get set }
    func prepareView(forState state: ViewControllerLivecicleState)
}

class MVPBasePresenter<Wireframe: MVPBaseWireframeInterface>: MVPBasePresenterInterface {
    
    var wireframe: MVPBaseWireframeInterface!
    
    func prepareView(forState state: ViewControllerLivecicleState) {
        
    }
    
}
