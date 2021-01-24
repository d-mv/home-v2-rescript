@react.component
let make = (~project: Types.project) => {
  let dispatch = Context.DispatchContext.useDispatch()

  let handleOnClick = () => dispatch(Utils.Actions.setProject("0000"))

  <li className="project-card" onClick={_ => handleOnClick()}>
    <div
      className="project-card-photo"
      style={ReactDOMRe.Style.make(
        ~background=`url(${Utils.Data.cardImageSize(project.photo.card)}) no-repeat scroll center center / cover`,
        (),
      )}
    />
    <div className="project-card-border" />
    <h2 className="project-card-title"> {project.title->React.string} </h2>
  </li>
}
