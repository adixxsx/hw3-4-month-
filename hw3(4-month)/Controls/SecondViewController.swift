//
//  SecondViewController.swift
//  hw3(4-month)
//
//  Created by user on 22/12/23.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController, UITableViewDataSource {

    private let cell = "AdiMad"
       private let tableView = UITableView()
       
       private let peoples: [Contact] = [
           .init(name: "Jane Cooper", phoneNumber: "(270) 555-0117", image: "1"),
           .init(name: "Devon Lane", phoneNumber: "(308) 555-0121", image: "2"),
           .init(name: "Darrell Steward", phoneNumber: "(684) 555-0102", image: "3"),
           .init(name: "Devon Lane", phoneNumber: "(704) 555-0127", image: "4"),
           .init(name: "Courtney Henry", phoneNumber: "(505) 555-0125", image: "5"),
           .init(name: "Wade Warren", phoneNumber: "(225) 555-0118", image: "6"),
           .init(name: "Bessie Cooper", phoneNumber: "(406) 555-0120", image: "7"),
           .init(name: "Robert Fox", phoneNumber: "(480) 555-0103", image: "8"),
           .init(name: "Jacob Jones", phoneNumber: "(702) 555-0122", image: "9"),
           .init(name: "Jenny Wilson", phoneNumber: "(239) 555-0108", image: "10")
       ]

    private lazy var titleLabel: UILabel = MakerView.shared.createLabel(text: "My Contacts", size: 16, weight: .semibold, textAlignment: .center)
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        view.backgroundColor = .white
        tableView.dataSource = self
        
        view.safeAreaLayoutGuide.owningView?.backgroundColor = .lightGray
      
        configureTitleLabel()
        configureTableView()
    }
    
    private func configureTitleLabel() {
            view.addSubview(titleLabel)
            
            titleLabel.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide)
                make.horizontalEdges.equalToSuperview()
            }
        }
        
        private func configureTableView() {
            view.addSubview(tableView)
            
            tableView.snp.makeConstraints { make in
                make.top.equalTo(titleLabel.snp.bottom).offset(20)
                make.horizontalEdges.equalToSuperview()
                make.bottom.equalTo(view.safeAreaLayoutGuide)
            }
        }
    }


    extension SecondViewController {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            peoples.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cell)
            cell.textLabel?.text = peoples[indexPath.row].name
            cell.textLabel?.font = .systemFont(ofSize: 17)
            cell.imageView?.image = UIImage(named: peoples[indexPath.row].image)
                    cell.detailTextLabel?.text = peoples[indexPath.row].phoneNumber
            cell.detailTextLabel?.textColor = .black
                    return cell
                }
}
