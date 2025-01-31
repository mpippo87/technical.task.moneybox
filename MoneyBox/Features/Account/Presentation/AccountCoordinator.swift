//
//  AccountCoordinator.swift
//  MoneyBox
//
//  Created by Filippo Minelle on 25/09/2023.
//

import MBUI
import Networking
import UIKit.UIKitCore

class AccountCoordinator: Coordinator {

    // MARK: - Properties

    var account: Account

    // MARK: - Init

    init(
        navigationController: UINavigationController,
        account: Account
    ) {
        self.account = account
        super.init(navigationController: navigationController)
    }

    // MARK: - Lifecycle

    override func start() {
        let accountViewController = AccountViewController(
            viewModel: AccountViewModel(coordinator: self,
                                        account: account)
        )
        navigationController.pushViewController(accountViewController, animated: true)
    }
}
