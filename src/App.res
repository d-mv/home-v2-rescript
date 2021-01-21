@react.component
let make = () => {
  let (navbarOpen, setNavbarOpen) = React.useState(() => !Utils.Global.isMobile)

  let (state, dispatch) = React.useReducer(Context.reducer, Context.initialState)

  <Context.StateContext.Provider value={state}>
    <Context.DispatchContext.Provider value={dispatch}>
      <div className="app-container">
        <Logo isOpen={true} onClick={setNavbarOpen} />
        {switch navbarOpen {
        | true => <Navbar />
        | _ => <> </>
        }}
        <Router />
      </div>
    </Context.DispatchContext.Provider>
  </Context.StateContext.Provider>
}
