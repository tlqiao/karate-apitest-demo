Feature: call java function demo
  Scenario: call java function demo
    * def service =
  """
  function(arg) {
    var Service = Java.type('util.Service');
    var jd = new Service();
    return jd.returnHello(arg);
  }
  """
# in this case the solitary 'call' argument is of type string
    * def result = call service 'qiaotl'
    * match result == 'Hello qiaotl'

# using a static method - observe how java interop is truly seamless !
    * def Service = Java.type('util.Service')
    * def javaService = new Service()
    * javaService.defaultWait(1)