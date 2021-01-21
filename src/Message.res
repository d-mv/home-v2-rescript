@react.component
let make = () => {
  <article>
    <h1> {"WELCOME,"->React.string} </h1>
    <h2> {"I'm Dmitry."->React.string} </h2>
    <h3> {"FRONT-END DEVELOPER"->React.string} </h3>
    <h4>
      {"React.js, React Native, Vue.js, Express, Rails & etc. Learning new, reading sci-fi
			and making photos when free."->React.string}
    </h4>
    <h5 className="link-disabled">
      {"{ "->React.string}
      <span className="dynamic-underline background-dark"> {"send message"->React.string} </span>
      {" }"->React.string}
    </h5>
  </article>
}
