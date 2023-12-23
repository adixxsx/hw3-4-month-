//
//  ViewController.swift
//  hw3(4-month)
//
//  Created by user on 22/12/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let loginLabel = MakerView.shared.createLabel(text: "Login", size: 18, weight: .bold, textColor: .black, textAlignment: .left)
    
    private let userIconBtn = MakerView.shared.createButton(setImage: UIImage(named: "User"), tintColor: .black, frame: CGRect(x: 0, y: 0, width: 20, height: 19))
    
    private let welcomelabel = MakerView.shared.createLabel(text: "Welcome back , Adilet Sabirkulov", size: 14, weight: .medium, textColor: UIColor (red: 0.358, green: 0.356, blue: 0.356, alpha: 1), textAlignment: .left)
    
    private let girlPicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Girl")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let enterYourMobileNumberLabel = MakerView.shared.createLabel(text: "Enter Your Mobile Number", size: 18, weight: .bold, textColor: UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1))
    
    private let enterNumberTF = MakerView.shared.createTextField(placeholder: "Enter Number", textColor: .black, cornerRadius: 10, backgroundColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1))
    
    private let changeNumber = MakerView.shared.createButton(fontSize: 12, setTitleBtn: "Change Number ?", textColor: .black, frame: CGRect(x: 0, y: 0, width: 110, height: 18))
    
    private lazy var loginButton: UIButton = MakerView.shared.createButton(fontSize: 15, fontWeight: .bold, cornerRadius: 10, setTitleBtn: "Login", textColor: .white, backgroundColor: UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1), frame: CGRect(x: 0, y: 0, width: 367, height: 43))
    
    private let googleView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "google")
        view.frame = CGRect(x: 0, y: 0, width: 15, height: 15)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let googleLabel = MakerView.shared.createLabel(text: "Google", size: 16, weight: .semibold, textColor: .black)
    
    private let dontAcc = MakerView.shared.createLabel(text: "You Don’t have an account ?  Sign up", size: 12, weight: .regular, textColor: .black)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        view.layer.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1).cgColor
        LoginLabel()
        UserIconBtn()
        WelcomeLabel()
        girlImageView()
        OrangeLabel()
        enterNumberTextField()
        ChangeNumber()
        LoginBtn()
        GoogleView()
        GoogleLabel()
        DontAcc()
    }
    
    private func LoginLabel() {
        view.addSubview(loginLabel)
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.leading.equalTo(view.snp.leading).offset(24)
        }
    }
    
    private func UserIconBtn() {
        view.addSubview(userIconBtn)
        
        userIconBtn.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.top)
            make.leading.equalTo(loginLabel.snp.leading).offset(52)
            //make.trailing.equalTo(view.snp.trailing).offset(320)
        }
    }
    
    private func WelcomeLabel() {
        view.addSubview(welcomelabel)
        
        welcomelabel.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(4)
            make.leading.equalToSuperview().offset(24)
        }
    }
    
    private func girlImageView() {
            view.addSubview(girlPicture)
            
        girlPicture.snp.makeConstraints { make in
                make.top.equalTo(welcomelabel.snp.bottom).offset(49)
                make.centerX.equalToSuperview()
                make.height.equalTo(231)
            }
        }

    
    private func OrangeLabel() {
            view.addSubview(enterYourMobileNumberLabel)
            
        enterYourMobileNumberLabel.snp.makeConstraints { make in
                make.top.equalTo(girlPicture.snp.bottom).offset(15)
                make.centerX.equalToSuperview()
            }
        }
    
    private func enterNumberTextField() {
           view.addSubview(enterNumberTF)
           
        enterNumberTF.snp.makeConstraints { make in
               make.top.equalTo(enterYourMobileNumberLabel.snp.bottom).offset(31)
               make.horizontalEdges.equalToSuperview().inset(24)
               make.height.equalTo(43)
           }
       }
    
    private func ChangeNumber() {
        view.addSubview(changeNumber)
        
        changeNumber.snp.makeConstraints { make in
            make.top.equalTo(enterNumberTF.snp.bottom).offset(11)
            make.leading.equalTo(loginLabel.snp.leading).offset(230)
            make.trailing.equalTo(loginLabel.snp.trailing).offset(21)
        }
    }
    
    private func LoginBtn() {
        view.addSubview(loginButton)
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(enterNumberTF.snp.bottom).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(43)
        }
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    @objc func loginButtonTapped(_ sender: UIButton) {
            if enterNumberTF.hasText {
                enterNumberTF.placeholder = "Enter Number"
                enterNumberTF.layer.borderWidth = 0
                enterNumberTF.layer.borderColor = .none
                navigationController?.pushViewController(SecondViewController(), animated: true)
            }
            else {
                enterNumberTF.placeholder = "Заполните поле.."
                enterNumberTF.layer.borderWidth = 1
                enterNumberTF.layer.borderColor = UIColor.red.cgColor
            }
        }
    
    private func GoogleView() {
        view.addSubview(googleView)
        
        googleView.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(40)
            make.leading.equalTo(view.snp.leading).offset(145)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
    }
    
    private func GoogleLabel() {
        view.addSubview(googleLabel)
        
        googleLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(45)
            make.leading.equalTo(googleView.snp.leading).offset(40)
            make.trailing.equalTo(view.snp.trailing).offset(170)
        }
    }
    
    private func DontAcc() {
        view.addSubview(dontAcc)
        
        dontAcc.snp.makeConstraints { make in
            make.top.equalTo(googleLabel.snp.bottom).offset(87)
            make.horizontalEdges.equalToSuperview().inset(90)
        }
    }
}

