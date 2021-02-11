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
    private var persons: [Person] = []
    private var networkDataFetcher = NetworkDataFetcher()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cofigureUI()
        fetchClients()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar(withTitle: "Missed Calls", prefersLargeTitles: true)
    }
    
    // MARK: - API
    
    func fetchClients() {
        self.networkDataFetcher.getClients { (result) in
            guard let result = result else { return }
            //print("Result: \(result)")
            var clients: Set<Client> = []
            var businessNumbers: Set<BusinessNumber> = []
            result.requests?.forEach {
                if let _client = $0.client {
                    clients.insert(_client)
                }
                if let _businessNumber = $0.businessNumber {
                    businessNumbers.insert(_businessNumber)
                }
            }
            let callers = clients.compactMap({ $0.Name })
            let phoneNumbers = businessNumbers.compactMap({ $0.number })
            print("Clients: \(callers)")
            print("phoneNumbers: \(phoneNumbers)")
            
        }
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
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MissedCallsController.reuseId, for: indexPath) as! MissedCallsCell
        cell.person = persons[indexPath.row]
        return cell
    }
    
}
