/*
Example of Iterate: list projects:
*/

projects = ""
getProjects().each {
  projects += it.name + "\n"
}

return projects

println projects
