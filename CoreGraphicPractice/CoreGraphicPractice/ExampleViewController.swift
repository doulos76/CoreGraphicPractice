//
//  ExampleViewController.swift
//  CoreGraphicPractice
//
//  Created by dave76 on 2020/01/01.
//  Copyright © 2020 dave76. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {
  
  // MARK:- Properties
  
  lazy var pushButton: PushButton = {
    let button = PushButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
    
  // MARK:- View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    setupLayout()
  }
  
  // MARK:- Setup Methods
  
  func setupViews() {
    view.backgroundColor = .white
    view.addSubview(pushButton)
  }
  
  func setupLayout() {
    NSLayoutConstraint.activate([
      pushButton.widthAnchor.constraint(equalToConstant: 100),
      pushButton.heightAnchor.constraint(equalToConstant: 100),
      pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
}

// MARK:- Preview
        
#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct ExampleViewControllerRepresentable: UIViewControllerRepresentable {
  typealias UIViewControllerType = ExampleViewController
  
  func makeUIViewController(
    context: UIViewControllerRepresentableContext<ExampleViewControllerRepresentable>
  ) -> ExampleViewController {
    return ExampleViewController()
  }
  
  func updateUIViewController(
    _ uiViewController: ExampleViewController,
    context: UIViewControllerRepresentableContext<ExampleViewControllerRepresentable>
  ) {
  }
}

struct ExampleViewController_Preview: PreviewProvider {
  static var previews: some View {
    ExampleViewControllerRepresentable()
  }
}
#endif
