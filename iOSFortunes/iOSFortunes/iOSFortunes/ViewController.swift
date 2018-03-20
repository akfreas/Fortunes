import UIKit

class ViewController: UIViewController {

    static let karateFontLarge: UIFont = UIFont(descriptor: UIFontDescriptor(name: "karate", size: 42.0), size: 42.0)
    static let karateFontMedium: UIFont = UIFont(descriptor: UIFontDescriptor(name: "karate", size: 26.0), size: 26.0)
    static let darkRedColor: UIColor = UIColor(red: 190.0/255.0, green: 0.0, blue: 0.0, alpha: 1.0)
    static let buttonBackgroundColor: UIColor = UIColor(red: 218.0/255.0, green:161.0/255.0, blue: 34.0/255.0, alpha: 1.0)
    
    var titleTextLabel: UILabel = {
        let label = UILabel()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        let attributes = [
            NSAttributedStringKey.font: ViewController.karateFontLarge,
            NSAttributedStringKey.foregroundColor: ViewController.darkRedColor,
            NSAttributedStringKey.paragraphStyle: paragraphStyle
        ]
        label.attributedText = NSAttributedString(string: "iOS Fortunes", attributes: attributes)
        return label
    }()
    
    var fortuneButton: UIButton = {
        let button = UIButton()
        let attributes = [
            NSAttributedStringKey.font: ViewController.karateFontMedium,
            NSAttributedStringKey.foregroundColor: UIColor.white,
            NSAttributedStringKey.backgroundColor: UIColor.clear
        ]
        button.setAttributedTitle(NSAttributedString(string: "New Fortune", attributes: attributes), for: .normal)
        button.backgroundColor = ViewController.buttonBackgroundColor
        return button
    }()
    
    var fortuneTextView: UITextView = {
        let textView = UITextView()
        textView.layer.borderColor = ViewController.darkRedColor.cgColor
        textView.textColor = ViewController.darkRedColor
        textView.layer.borderWidth = 1.0
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.isHidden = true
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addTextView()
        addTitleLabel()
        addFortuneButton()
        addLayoutConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addFortuneButton() {
        view.addSubview(fortuneButton)
        fortuneButton.translatesAutoresizingMaskIntoConstraints = false
        fortuneButton.addTarget(self, action: #selector(fortuneButtonPressed), for: .touchUpInside)
    }
    
    func addTitleLabel() {
        titleTextLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleTextLabel)
    }
    
    func addTextView() {
        fortuneTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fortuneTextView)
    }
    
    func addLayoutConstraints() {
        view.translatesAutoresizingMaskIntoConstraints = false
        [titleTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44.0),
        titleTextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0.0),
        fortuneTextView.topAnchor.constraint(equalTo: titleTextLabel.bottomAnchor, constant: 25.0),
        fortuneTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22.0),
        view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: fortuneTextView.trailingAnchor, constant: 22.0),
        fortuneButton.topAnchor.constraint(equalTo: fortuneTextView.bottomAnchor, constant: 8.0),
        fortuneButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0.0),
        view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: fortuneButton.trailingAnchor, constant: 0.0),
        fortuneButton.heightAnchor.constraint(equalToConstant: 44.0)].forEach({ constraint in
            constraint.isActive = true
        })
    }
    
    @IBAction func fortuneButtonPressed() {
        Actions.fetchFortune { [weak self] (fortune, luckyNumbers) -> (Void) in
            self?.setFortune(fortune: fortune, luckyNumbers: luckyNumbers)
        }
    }
    
    func setFortune(fortune: String, luckyNumbers: String) {
        let fontColor = ViewController.darkRedColor
        let fortuneString = NSMutableAttributedString(string: fortune, attributes: [
            NSAttributedStringKey.font: UIFont(name: "AmericanTypewriter", size: 18.0) ?? UIFont.systemFont(ofSize: 18.0),
            NSAttributedStringKey.foregroundColor: fontColor
            ])
        fortuneString.append(NSAttributedString(string: "\nLucky numbers: " + luckyNumbers, attributes:
            [
                NSAttributedStringKey.font: UIFont(name: "AmericanTypewriter", size: 12.0) ?? UIFont.systemFont(ofSize: 18.0),
                NSAttributedStringKey.foregroundColor: fontColor
            ]
        ))
        
        fortuneTextView.isHidden = false
        fortuneTextView.attributedText = fortuneString
        
        updateTextViewForCurrentText()
    }
    
    func updateTextViewForCurrentText() {
        let fixedWidth = fortuneTextView.frame.size.width
        fortuneTextView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        let newSize = fortuneTextView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        var newFrame = fortuneTextView.frame
        newFrame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        fortuneTextView.frame = newFrame
    }
}

