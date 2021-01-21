@react.component
let make = () => {
  let {currentView} = Context.StateContext.useState()
Js.log(currentView)
  <main className="content">
    {switch currentView {
    | "HOME" => <Home />
    | "PROJECTS" => <Projects />
    | "PHOTOS" => <Photos />
    | "CONTACT" => <Contact />
    | _ => <> </>
    }}
  </main>
}
