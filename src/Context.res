type state = {currentView: string, counter: int, project: string, modalIsOpen: bool} // state model
type action = {name: string, payload: string} // action model
type dispatch = action => unit // dispatch model

let initialState: state = {currentView: "HOME", counter: 0, project: "", modalIsOpen: false} // initial state

module StateContext = {
  // initialize context
  let context: React.Context.t<state> = React.createContext(initialState)
  // set useState function
  let useState = () => React.useContext(context)

  // generate provider
  module Provider = {
    let provider = React.Context.provider(context)

    @react.component
    let make = (~value, ~children) => {
      React.createElement(provider, {"value": value, "children": children})
    }
  }
}

module DispatchContext = {
  // mock function, require
  let mock = (_: action) => {Js.log("hello")}
  // initialize context
  let context = React.createContext(mock)
  // set useDispatch function
  let useDispatch = () => React.useContext(context)

  // generate provider
  module Provider = {
    let provider = React.Context.provider(context)

    @react.component
    let make = (~value, ~children) => {
      React.createElement(provider, {"value": value, "children": children})
    }
  }
}

// reducer for state
let reducer = (state, action) => {
  switch action.name {
  | "SET_VIEW" => {...state, currentView: action.payload}
  | "SET_PROJECT" => {...state, project: action.payload}
  | _ => state
  }
}
