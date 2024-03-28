/*
Example of Iterate: list projects:
*/
import groovy.json.JsonOutput

  
projects = ""
getProjects().each {
  projects += it.name + "\n"
}

return projects

def json_str = JsonOutput.toJson(projects)
println(json_str)
 
def json_beauty = JsonOutput.prettyPrint(json_str)
println(json_beauty)