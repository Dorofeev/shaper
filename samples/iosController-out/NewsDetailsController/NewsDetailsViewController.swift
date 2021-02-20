//
//  NewsDetailsViewController.swift
//  rosseti
//
//  Created by Andrey Dorofeev on 20.02.2021.
//  Copyright © 2021 IceRock Development. All rights reserved.
//

import MultiPlatformLibrary
import UIKit

class NewsDetailsViewController: MVVMController<NewsDetailsViewModel> {

    // MARK: - IBOutlets


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        
    }

    override func bindViewModel(_ viewModel: NewsDetailsViewModel) {
        super.bindViewModel(viewModel)
    }

    // MARK: - Action
    
}

// Создай контроллер в сториборде с id = "newsDetailsController"

/* Добаввь это в координатор
// MARK: - NewsDetails

extension NewsCoordinator: NewsDetailsViewModelEventsListener {
    
    func createNewsDetailsController() -> NewsDetailsViewController {
        let controller = R.storyboard.news.newsDetailsController()!
        
        let viewModel = factory.createNewsDetailsViewModel(
            eventsDispatcher: EventsDispatcher(listener: self)
        )
        controller.bindViewModel(viewModel)
        return controller
    }
}

*/
