//
//  MakerView.swift
//  hw3(4-month)
//
//  Created by user on 22/12/23.
//

import UIKit


class MakerView {
    
    init() {
        print("MakerView init")
    }
    
    static var shared = MakerView()
    
    func createLabel(text: String = "Text",
                     size: CGFloat = 12,
                     weight: UIFont.Weight = .regular,
                     textColor: UIColor = .black,
                     textAlignment: NSTextAlignment = .left,
                     numberOfLines: Int = 0,
                     lineBreakMode: NSLineBreakMode = .byCharWrapping
    
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: size, weight: weight)
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func createTextField(text: String = "",
                         placeholder: String = "",
                         textColor: UIColor = .black,
                         cornerRadius: CGFloat = 8,
                         backgroundColor: UIColor = .clear,
                         borderWidth: CGFloat = 0,
                         borderColor: CGColor = UIColor.red.cgColor,
                         leftViewMode: UITextField.ViewMode = .always
                         
    
    ) -> UITextField {
        let tf = UITextField()
        tf.text = text
        tf.placeholder = placeholder
        tf.textColor = textColor
        tf.layer.cornerRadius = cornerRadius
        tf.backgroundColor = backgroundColor
        tf.layer.borderWidth = borderWidth
        tf.layer.borderColor = borderColor
        tf.leftViewMode = leftViewMode
        return tf
    }
    
    
    func createView(backgroundColor: UIColor = .white,
                    cornerRadius: CGFloat = 10
    
    ) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = cornerRadius
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    func createImage(
        cornerRadius: CGFloat = 10,
        someImage: UIImage
    ) -> UIImageView {
        let image = UIImageView()
        image.image = someImage
        image.layer.cornerRadius = cornerRadius
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    func createButton(
        text: String = "",
        setImage: UIImage? = nil,
        fontSize: CGFloat = 12,
        fontWeight: UIFont.Weight = .regular,
        cornerRadius: CGFloat = 10,
        setTitleBtn: String = "",
        tintColor: UIColor = .black,
        textColor: UIColor = .black,
        backgroundColor: UIColor = .clear,
        frame: CGRect
    ) -> UIButton {
        let btn = UIButton()
        btn.setTitle(setTitleBtn, for: .normal)
        btn.tintColor = tintColor
        btn.titleLabel?.font = .systemFont(ofSize: fontSize, weight: fontWeight)
        btn.setTitleColor(textColor, for: .normal)
        btn.setImage(setImage, for: .normal)
        btn.backgroundColor = backgroundColor
        btn.layer.cornerRadius = cornerRadius
        btn.frame = frame
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
}
