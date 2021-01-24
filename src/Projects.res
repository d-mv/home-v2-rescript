@react.component
let make = () => {
  let {modalIsOpen} = Context.StateContext.useState()

  let mapProjectFn = (project: Types.project) => <Project project={project} />
  <ul
    className="projects-container"
    style={ReactDOMRe.Style.make(~overflow=modalIsOpen ? "hidden" : "undefined", ())}>
    {Js.Array.map(mapProjectFn, Utils.Data.loadJson.projects)->React.array}
  </ul>
}
