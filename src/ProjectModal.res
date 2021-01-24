@react.component
let make = () => {
  let {project} = Context.StateContext.useState()
  let projectIsPresent = project !== ""
  switch projectIsPresent {
  | true => <div> {`PRJ=>${project}`->React.string} </div>
  | _ => <> </>
  }
}
