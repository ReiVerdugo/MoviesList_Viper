//
//  DetailsViewController.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, DetailsViewInput {
  
  let x: CGFloat = 20
  let width: CGFloat = 200
  let height: CGFloat = 30
  
  var output: DetailsViewOutput!
  var tapToShowMore: UIButton!
  var y: CGFloat = 100
  
  // MARK: Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    output.viewIsReady()
  }
  
  // MARK: DetailsViewInput
  
  func setupView() {
    view = UIView()
    view.backgroundColor = .white
  }
  
  func setupButton(with text: String) {
    tapToShowMore = UIButton()
    tapToShowMore.frame = CGRect(x: x, y: y, width: width, height: height)
    tapToShowMore.contentHorizontalAlignment = .left
    view.addSubview(tapToShowMore)
    tapToShowMore.setTitleColor(.black, for: .normal)
    tapToShowMore.setTitle(text, for: .normal)
    tapToShowMore.addTarget(self, action: #selector(showMoreTapped), for: .touchUpInside)
    y += 10
  }
  
  func addLabel(with text: String) {
    let label = UILabel()
    view.addSubview(label)
    label.frame = CGRect(x: x, y: y, width: width, height: height)
    label.text = text
    y += 50
  }
}

extension DetailsViewController {
  @objc func showMoreTapped() {
    tapToShowMore.isHidden = true
    output.showMoreTapped()
  }
}
