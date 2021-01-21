@react.component
let make = () => {
  <div className="home">
    <div className="home-column"> <Message /> </div>
    <div className="home-column">
      <div
        className="profile-photo"
        style={ReactDOMRe.Style.make(~height=`${Js.String2.make(Utils.Global.height/12)}rem`,())}
      />
    </div>
  </div>
}
