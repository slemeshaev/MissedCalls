//
//  MissedCallsController.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 09.02.2021.
//

import UIKit

class MissedCallsController: UIViewController {
    
    // MARK: - Properties
    
    private let tableView = UITableView()
    private static let reuseId = "MissedCallsCell"
    private var networkService = NetworkService()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cofigureUI()
        self.networkService.getClients()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar(withTitle: "Missed Calls", prefersLargeTitles: true)
    }
    
    // MARK: - Helpers
    
    func cofigureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.barStyle = .black
        
        configurationTableView()
        
    }
    
    func configurationTableView() {
        tableView.backgroundColor = .white
        tableView.rowHeight = 96
        tableView.register(MissedCallsCell.self, forCellReuseIdentifier: MissedCallsController.reuseId)
        
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.frame = view.frame
    }
    
}

// MARK: - UITableViewDelegate

extension MissedCallsController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("IndexPath: \(indexPath.row)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

// MARK: - UITableViewDataSource

extension MissedCallsController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MissedCallsController.reuseId, for: indexPath)
        return cell
    }
    
}
