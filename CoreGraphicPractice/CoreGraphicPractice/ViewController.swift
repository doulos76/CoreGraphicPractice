//
//  ViewController.swift
//  CoreGraphicPractice
//
//  Created by dave76 on 2020/01/01.
//  Copyright © 2020 dave76. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  lazy var customRectView: CustomView = {
    let view = CustomView()
    return view
  }()
  
  lazy var customRectView2: CustomView = {
    let view = CustomView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    setupLayout()
  }

  // MARK:- Setup Methods
  
  func setupViews() {
    view.addSubview(customRectView)
    view.addSubview(customRectView2)
  }
  
  func setupLayout() {
    customRectView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
    NSLayoutConstraint.activate([
      customRectView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
      customRectView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
      customRectView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
      customRectView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)
    ])
  }

}

#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
  typealias UIViewControllerType = ViewController
  
  func makeUIViewController(
    context: UIViewControllerRepresentableContext<ViewControllerRepresentable>
  ) -> ViewController {
    return ViewController()
  }
  
  func updateUIViewController(
    _ uiViewController: ViewController,
    context: UIViewControllerRepresentableContext<ViewControllerRepresentable>
  ) {
  }
}

struct Preview: PreviewProvider {
  static var previews: some View {
    ViewControllerRepresentable()
  }
}
#endif
