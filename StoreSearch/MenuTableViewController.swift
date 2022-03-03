//
//  MenuTableViewController.swift
//  StoreSearch
//
//  Created by William on 3/2/22.
//

import UIKit

protocol MenuViewControllerDelegate: AnyObject {
    func menuViewControllerSendEmail(_ controller: MenuViewController)
}

class MenuViewController: UITableViewController {
    weak var delegate: MenuViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table View Delegates
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            delegate?.menuViewControllerSendEmail(self)
        }
    }
}
