type el = {key: string, v: int}

module NavbarButton = {
  @react.component
  let make = (~page: Data.page) => {
    let {currentView} = Context.StateContext.useState()
    let dispatch = Context.DispatchContext.useDispatch()
    let style = if currentView == page.title {
      ReactDOMRe.Style.make(~color="var(--accent)", ())
    } else {
      ReactDOMRe.Style.make()
    }

    let handleOnClick = () => dispatch(Utils.Actions.setView(page.title))

    <div className="navbar-button-container" onClick={_ => handleOnClick()}>
      <button className="navbar-button" style={style}> {page.title->React.string} </button>
    </div>
  }
}

@react.component
let make = () => {
  let mapButtonFn = (page: Data.page) => <NavbarButton page={page} />
  <nav> {Js.Array.map(mapButtonFn, Data.Buttons.pages)->React.array} </nav>
}
