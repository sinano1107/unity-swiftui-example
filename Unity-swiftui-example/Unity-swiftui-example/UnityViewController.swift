//
//  UnityViewController.swift
//  Unity-swiftui-example
//
//  Created by 長政輝 on 2023/07/05.
//

import SwiftUI

struct UnityViewController: UIViewControllerRepresentable {
    private let vc = UIViewController()
    private let unityView = Unity.shared.view
    
    func makeUIViewController(context: Context) -> some UIViewController {
        vc.view?.addSubview(unityView)
        unityView.frame = vc.view.bounds
        vc.view.sendSubviewToBack(unityView)
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct UnityViewController_Previews: PreviewProvider {
    static var previews: some View {
        UnityViewController()
    }
}
