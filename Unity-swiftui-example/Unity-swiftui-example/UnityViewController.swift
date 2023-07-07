//
//  UnityViewController.swift
//  Unity-swiftui-example
//
//  Created by 長政輝 on 2023/07/05.
//

import SwiftUI

struct UnityViewController: UIViewControllerRepresentable {
    private let vc = UIViewController()
    
    func makeUIViewController(context: Context) -> some UIViewController {
#if WITH_Unity
        let unityView = Unity.shared.view
        vc.view.addSubview(unityView)
        unityView.frame = vc.view.bounds
        vc.view.sendSubviewToBack(unityView)
#else
        let label = UILabel(frame: vc.view.bounds)
        label.backgroundColor = .cyan.withAlphaComponent(0.5)
        label.numberOfLines = 2
        label.textAlignment = .center
        label.text = "This is Unity View.\nBut now using NON_Unity target."
        vc.view.addSubview(label)
#endif
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct UnityViewController_Previews: PreviewProvider {
    static var previews: some View {
        UnityViewController()
    }
}
