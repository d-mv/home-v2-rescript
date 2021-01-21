module Dom = Webapi.Dom

@react.component
let make = () => {
  let mobile = Dom.Window.innerWidth(Dom.window)
  let (modul, setModul) = React.useState(() => "HOME")

  let (navbarOpen, setNavbarOpen) = React.useState(() => mobile <= 500)
  // <div className="App">
  //   <header className="App-header">
  //     <div className="App-logo"> <Logo /> </div>
  //     <p> {"Edit <code>src/App.js</code> and save to reload."->React.string} </p>
  //     <a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">
  //       {"Learn React"->React.string}
  //     </a>
  //   </header>
  // </div>
  <div className="app-container">
    <Logo isOpen={true} onClick={setNavbarOpen} />
    <main className="content">
      {switch modul {
      | "HOME" => <Home />
      | _ => <> </>
      }}
    </main>
  </div>
}
