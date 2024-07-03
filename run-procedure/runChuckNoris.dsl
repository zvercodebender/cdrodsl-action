def params = [
    projectName: "MyProject",
    procedureName: "ChuckNorisQuotes",
    actualParameter: [
        catagory: "dev"
    ]
]



def resp
// Now let's run this newly created procedure
// This is in a transaction on purpose
transaction{

  resp=runProcedure(
    projectName: 'MyProject',
    procedureName: 'ChuckNorisQuotes',
    actualParameter: [
      catagory: "dev",
    ]
  )

}

  // Now let's grab the jobId launched to run the procedure
  def id=resp.jobId
  // Let's wait for it to finish

  def String status=''
  while(status != "completed") {
    // We need the polling in a different transaction started after
    //    the runProcedure one.
  transaction{
    status=getProperty(propertyName: 'status', jobId: id).value
    }
    sleep (1000)
  }
  def String outcome=getProperty(propertyName: 'outcome', jobId: id).value;

resp.jobId