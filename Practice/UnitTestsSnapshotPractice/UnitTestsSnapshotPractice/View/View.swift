//
//  View.swift
//  UnitTestsSnapshotReference
//
//  Created by gustavo.garcia.leite on 23/06/23.
//

import UIKit

final class View: UIView {
    
    private let button: UIButton = {
        let button: UIButton = .init(type: .system)
        button.backgroundColor = .blue
        button.setTitle("tap", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 24)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        build()
        setUpConstraints()
        setUpAdditionalConfiguration()
    }
    
    private func build() {
        addSubview(button)
    }
    
    private func setUpConstraints() {
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 200).isActive = true
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    private func setUpAdditionalConfiguration() {
        backgroundColor = .red
    }
    
}
