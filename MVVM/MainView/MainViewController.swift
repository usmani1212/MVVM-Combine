//
//  ViewController.swift
//  MVVM
//
//  Created by Muhammad Usman on 17/10/2022.
//

import UIKit
import Combine

class MainViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    private let viewModel = MainViewModel()
    
    //FOR COMBINE method
    private var cancellables: Set<AnyCancellable> = []
        
        override func viewDidLoad() {
            super.viewDidLoad()

            setupBinders()
            
        }
        
      

    @IBAction func getUserData(_ sender: Any) {
        viewModel.getUserName()
        viewModel.getUserEmail()
    }
    
    
    private func setupBinders() {
        
        //  USING OBSERVABLE OBJECT
//        viewModel.userNameMessage.bind { [weak self] message in
//            self?.nameLabel.text = message
//        }
//
//        viewModel.userEmailMessage.bind { [weak self] message in
//            self?.emailLabel.text = message
//        }
        
        
        // USING COMBINE
        
        viewModel.$userNameMessage.sink { [weak self] message in
            self?.nameLabel.text = message
        }.store(in: &cancellables)
        viewModel.$userNameMessage.sink { [weak self] message in
            self?.emailLabel.text = message
        }.store(in: &cancellables)
        
    }
}

