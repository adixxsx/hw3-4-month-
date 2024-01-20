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
           .init(name: "Lionel Messi", phoneNumber: "(987) 888-8888", image: "leo"),
           .init(name: "Madison Beer", phoneNumber: "(999) 999-9999", image: "mad"),
           .init(name: "Adilet Sabirkulov", phoneNumber: "(996)554 744141", image: "adi"),
           .init(name: "Ramazan Abduraimov", phoneNumber: "(996)706 407943", image: "rom"),
           .init(name: "Reyna Erkebaeva", phoneNumber: "(996)706 826789", image: "ri"),
           .init(name: "Bekzhan Tologonov", phoneNumber: "(996)990 222105", image: "bek"),
           .init(name: "Khani Bakybaev", phoneNumber: "(996)707 100206", image: "xan"),
           .init(name: "Abdymalik Akylbek uulu", phoneNumber: "(996)702 332583", image: "max"),
           .init(name: "Azem Toktosheva", phoneNumber: "(996)777 554411", image: "azem"),
           .init(name: "Syrgaiym Kamchybekova", phoneNumber: "(996)773 910190", image: "syra")
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
