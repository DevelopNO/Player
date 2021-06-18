//
//  ViewController.swift
//  Player
//
//  Created by Noam Ohana on 18/06/2021.
//

import UIKit
import RxSwift
import SnapKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.backgroundColor = .red
    let label = UILabel(frame: .zero)
    label.text = "Hello"
    label.textColor = .green

    view.addSubview(label)
    label.snp.makeConstraints { make in
      make.height.equalTo(80)
      make.width.equalTo(150)
      make.center.equalTo(view)
    }
  }


}

