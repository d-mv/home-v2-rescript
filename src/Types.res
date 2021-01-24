type projectPhotoDetails = {
  s: string,
  m: string,
  l: string,
  xl: string,
  xxl: string,
}
type projectPhoto = {
  card: array<string>,
  details: projectPhotoDetails,
}
type projectLinks = {
  deployed: option<string>,
  github: option<string>,
  video: option<string>,
}
type project = {
  title: string,
  description: string,
  photo: projectPhoto,
  details: string,
  technology: array<string>,
  links: projectLinks,
}

type externalData = {projects: array<project>}
