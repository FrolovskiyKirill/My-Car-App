//
//  ViewController.swift
//  My Car App
//
//  Created by Kirill Frolovskiy on 28.05.2023.
//

import UIKit

class MainScreenViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    setupNavigationBar()
    view.backgroundColor = .white
  }
  
  private func setupNavigationBar() {
    title = "My car"
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.rightBarButtonItem = UIBarButtonItem(
      title: "Expenses",
      style: .plain,
      target: self,
      action: #selector(pushExpensesListViewController)
    )
  }

  @objc private func pushExpensesListViewController() {
    let expensesListViewController = ExpensesListViewController()
    navigationController?.pushViewController(expensesListViewController, animated: true)
  }

}

