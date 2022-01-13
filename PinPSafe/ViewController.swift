import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    let safeAreaVisualizeView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        safeAreaVisualizeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(safeAreaVisualizeView)
        safeAreaVisualizeView.backgroundColor = .systemBlue.withAlphaComponent(0.5)
        NSLayoutConstraint.activate([
            safeAreaVisualizeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            safeAreaVisualizeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            safeAreaVisualizeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            safeAreaVisualizeView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let value = sender.value
        additionalSafeAreaInsets = UIEdgeInsets(top: 0, left: 0, bottom: view.bounds.height * CGFloat(value), right: 0)
    }
}

class ButtonViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        additionalSafeAreaInsets = UIEdgeInsets(top: 0, left: 0, bottom: view.bounds.height, right: 0)
    }
}
