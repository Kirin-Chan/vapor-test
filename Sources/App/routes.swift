import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

  struct JSONExample: Content {
    let name: String
    let age: Int
    let birthday: Date
  }
  
  router.get("json") { req -> JSONExample in
    return JSONExample(
      name: "Kilian",
      age: 36,
      birthday: Date())
    
  }
    // Example of configuring a controller
    let todoController = TodoController()
    let todos = router.grouped("todos")
    todos.get(use: todoController.index)
    todos.get(Todo.parameter, use: todoController.view)
    todos.post(use: todoController.create)
    todos.delete(use: todoController.clear)
    todos.delete(Todo.parameter, use: todoController.delete)
    todos.patch(Todo.parameter, use: todoController.update)
}
