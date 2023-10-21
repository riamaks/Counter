import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    var amount: Int = 0
    @IBOutlet weak var counterButtonNegative: UIButton!
    @IBOutlet weak var toNull: UIButton!
    @IBOutlet weak var historyChanges: UITextView!
    
    func theDateIs() -> String {
        let today = Date()
        let todayDate = DateFormatter()
        todayDate.dateFormat = "HH:mm E, d MMM y"
        return todayDate.string(from: today)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func counterButtonTapped(_ sender: Any) {
        amount += 1
        counterLabel.text = "Значение счетчика: \(amount)"
        historyChanges.text += "\n \(theDateIs()) значение изменено на +1"
    }
    
    @IBAction func counterButtonNegativeTapped(_ sender: Any) {
        amount -= 1
        if amount >= 0 {
            counterLabel.text = "Значение счетчика: \(amount)"
            historyChanges.text += "\n \(theDateIs()) значение изменено на -1"
        } else {
            amount = 0
            counterLabel.text = "Значение счетчика: 0"
            historyChanges.text += "\n \(theDateIs()) попытка уменьшить значение счетчика ниже 0"
        }
    }
    @IBAction func toNullTapped(_ sender: Any) {
        amount = 0
        counterLabel.text = "Значение счетчика: 0"
        historyChanges.text += "\n \(theDateIs()) значение сброшено"
    }
}

