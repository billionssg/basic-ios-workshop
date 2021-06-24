//
//  AddNewTodoViewController.swift
//  todolive
//
//  Created by Billion MOKAPOS on 23/06/21.
//

import UIKit

protocol AddNewTodoDelegate: AnyObject {
    func addSaveTodo(todo: String?)
}

class AddNewTodoViewController: UIViewController {
    
    weak var delegate: AddNewTodoDelegate?
    @IBOutlet var todoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveTodo(_ sender: UIButton) {
        delegate?.addSaveTodo(todo: todoTextField.text)
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
