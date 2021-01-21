@react.component
let make = (~isOpen: bool, ~onClick: (bool => bool) => unit) => {
  let class = switch isOpen {
  | true => ""
  | _ => " underline"
  }
  <button className={"logo" ++ class} onClick={_ => onClick(isOpen => !isOpen)}>
    {"DM"->React.string}
  </button>
}
