module Dom = Webapi.Dom

@react.component
let make = () => {
  let height = Dom.Window.innerHeight(Dom.window)
  Js.log(Js.String2.make(height/12))
  <div className="home">
    <div className="home-column"> <Message /> </div>
    <div className="home-column">
      <div
        className="profile-photo"
        style={ReactDOMRe.Style.make(~height=`${Js.String2.make(height/12)}rem`,())}
      />
    </div>
  </div>
}
