import UIKit

var str = "Hello, playground"

let viewController = UIViewController()

let runtimeView = viewController.value(forKey: "view") as? UIView

type(of: runtimeView)

runtimeView?.backgroundColor = UIColor.yellow

let dict = ["2": "b", "1": "a", "3": "c"]

let array2 = dict.keys.sorted()
for a in array2.reversed() {
    print(a)
}
