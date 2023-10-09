//
//  FeefViewController.swift
//  KingBurguer
//
//  Created by João Vitor Costa Ferreira on 07/10/23.
//

import UIKit

class FeedViewController: UIViewController {
    let sections = [
        "Mais vendidos", "Vegano", "Bovino", "Sobremesas"
    ]
    
    private let homeFeedTable: UITableView = {
        let tv = UITableView(frame: .zero, style: .grouped)
        
        tv.backgroundColor = .systemBackground
        tv.register(FeedTableViewCell.self, forCellReuseIdentifier: FeedTableViewCell.identifier)
        
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(homeFeedTable)
        
        let headerView = HighlightView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 300))
        headerView.backgroundColor = .orange
        
        homeFeedTable.tableHeaderView = headerView
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        
        configureNavBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        homeFeedTable.frame = view.bounds
    }
    
    private func configureNavBar() {
        navigationItem.title = "Produdos"
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.tintColor = UIColor.red
        
        var image = UIImage(named: "icon")
        image = image?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "power"), style: .done, target: self, action: #selector(testDidTap)),
            UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: #selector(testDidTap))
        ]
    }
    
    @objc func testDidTap(_ sender: UIBarButtonItem) {
        print("Clicou")
    }
}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    
    // Numero de seção
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    // Numero de linhas na seção
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        
        header.textLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y:header.bounds.origin.y, width: 120, height: header.bounds.height)
        header.textLabel?.textColor = .label
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as! FeedTableViewCell
        
        return cell
    }
    
    
}
