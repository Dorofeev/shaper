import MultiPlatformLibrary
import UIKit

class ServicesCoordinator: BaseCoordinator {
    private var factory: ServicesFactory {
        return AppComponent.factory.servicesFactory
    }

    private weak var viewModel: ServicesViewModel?

    override func start() {
        let vc: ServicesViewController = R.storyboard.services.servicesController()!

        let viewModel = factory.createServicesViewModel(
            eventsDispatcher: EventsDispatcher(listener: self)
        )

        self.viewModel = viewModel

        vc.bindViewModel(viewModel)
        vc.deinitCallback = { [weak self] in
            self?.completionHandler?()
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ServicesCoordinator: ServicesViewModelEventsListener {

}