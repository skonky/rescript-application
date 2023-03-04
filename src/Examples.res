type todo = {
  title: string,
  isDone: bool,
}

type state = {newTodoValue: string, todos: array<todo>}

let initialState: state = {
  newTodoValue: "",
  todos: [
    {
      title: "Initial todo",
      isDone: true,
    },
  ],
}

type actions = CreateTodo | ClearTodos | InputChanged(string)

let reducer = (state, action) => {
  switch action {
  | CreateTodo => {
      newTodoValue: "",
      todos: Js.Array.concat(
        [
          {
            title: state.newTodoValue,
            isDone: false,
          },
        ],
        state.todos,
      ),
    }
  | ClearTodos => {
      ...state,
      todos: [],
    }
  | InputChanged(newTodoValue) => {
      ...state,
      newTodoValue: newTodoValue,
    }
  }
}

let default = () => {
  let (state, dispatch) = React.useReducer(reducer, initialState)
  let handleClearTodos = _ => dispatch(ClearTodos)

  let handleChange = event => {
    let value = ReactEvent.Form.target(event)["value"]
    dispatch(InputChanged(value))
  }

  let handleCreateTodo = _ => {
    dispatch(CreateTodo)
  }

  <div className="p-6">
    <input
      value=state.newTodoValue
      onChange={handleChange}
      className="input input-bordered mr-5"
      placeholder="Type here"
    />
    <button onClick={handleCreateTodo} className="btn mr-3"> {"Create"->React.string} </button>
    <button onClick={handleClearTodos} className="btn"> {"Clear"->React.string} </button>
    <ul className="mt-3 flex flex-col gap-4 bg-base-200 border-solid rounded">
      {state.todos
      ->Js.Array2.map(todo => <li className="p-3"> {todo.title->React.string} </li>)
      ->React.array}
    </ul>
  </div>
}
