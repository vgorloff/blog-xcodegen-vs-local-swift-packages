//
//  MainViewController.swift
//  XcodeGen-vs-Local-Swift-Packages
//
//  Created by Vlad Gorlov on 24.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import UIKit
import Down
import libMarkdownDataSource

class MainViewController: UIViewController {

   override func loadView() {
      view = UIView()
      view.backgroundColor = .white
   }

   override func viewDidLoad() {
      super.viewDidLoad()
      do {
         let down = Down(markdownString: SampleDataSource().generateText())
         let textView = makeTextView()
         textView.attributedText = try down.toAttributedString()
      } catch {
         print(String(describing: error))
      }
   }

   private func makeTextView() -> UITextView {
      let textView = UITextView()
      textView.translatesAutoresizingMaskIntoConstraints = false
      view.addSubview(textView)

      textView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
      textView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
      textView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
      textView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

      return textView
   }

}
