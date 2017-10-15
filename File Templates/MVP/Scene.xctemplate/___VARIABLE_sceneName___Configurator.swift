//___FILEHEADER___

class ___VARIABLE_sceneName___Configurator {
    
    class func prepareScene(forViewController viewController: ___VARIABLE_sceneName___ViewController) {
        let presenter = ___VARIABLE_sceneName___Presenter()
        presenter.view = viewController
        presenter.wireframe = ___VARIABLE_sceneName___Wireframe(viewController: viewController)
        viewController.eventHandler = presenter
    }
    
}
