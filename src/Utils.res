module Dom = Webapi.Dom

module Global = {
  let isMobile = Dom.Window.innerWidth(Dom.window) < 500
  let height = Dom.Window.innerHeight(Dom.window)
}

module Actions = {
  let setView: string => Context.action = (view: string) => {
    name: "SET_VIEW",
    payload: view,
  }
}
