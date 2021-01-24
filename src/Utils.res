module Dom = Webapi.Dom
open Belt

module Global = {
  let width = Dom.Window.innerWidth(Dom.window)
  let isMobile = width < 500
  let height = Dom.Window.innerHeight(Dom.window)

  // let devicePixelRatio = Dom.Window.screen(Dom.window).devicePixelRatio
}

module Data = {
  @bs.val external require: string => Types.externalData = "require"
  let loadJson = require("./data.json")

  let cardImageSize = (photoLinks: array<string>) => {
    let first = Belt_Array.get(photoLinks, 0)
    let second = Belt_Array.get(photoLinks, 1)

    let firstLink = switch first {
    | Some(first) => first
    | None => ""
    }

    let secondLink = switch second {
    | Some(second) => second
    | None => ""
    }

    firstLink !== "" && Global.width > 300 ? firstLink : secondLink
  }
}

module Actions = {
  let setView: string => Context.action = (view: string) => {
    name: "SET_VIEW",
    payload: view,
  }
  let setProject: string => Context.action = (project: string) => {
    name: "SET_PROJECT",
    payload: project,
  }
}
