//
//  ViewController.swift
//  todolive
//
//  Created by Billion MOKAPOS on 23/06/21.
//

import UIKit

class TodoViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var todoList: [String] = ["Gaming", "Reading", "Coding", "Eating", "Sleeping"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    @IBAction func showAddTodoPage(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "showAddNewTodo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newTodoViewController = segue.destination as! AddNewTodoViewController
        
        newTodoViewController.delegate = self
    }
    

}

extension TodoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as! TodoTableViewCell
        
        cell.setCell(name: todoList[indexPath.row])
        return cell
    }
}

extension TodoViewController: AddNewTodoDelegate {
    func addSaveTodo(todo: String?) {
        
        
        guard let todo2 = todo else { return }
        
        todoList.append(todo2)
        
        tableView.reloadData()
    }
}
