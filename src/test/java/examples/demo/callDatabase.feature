Feature: call database demo
  Scenario: call database
# use jdbc to validate
* def config = { username: 'sa', password: '', url: 'jdbc:h2:mem:testdb', driverClassName: 'org.h2.Driver' }
* def DbUtils = Java.type('com.intuit.karate.demo.util.DbUtils')
* def db = new DbUtils(config)

# since the DbUtils returns a Java Map, it becomes normal JSON here !
# which means that you can use the full power of Karate's 'match' syntax
* def dogs = db.readRows('SELECT * FROM DOGS')
* match dogs contains { ID: '#(id)', NAME: 'Scooby' }

* def dog = db.readRow('SELECT * FROM DOGS D WHERE D.ID = ' + id)
* match dog.NAME == 'Scooby'

* def test = db.readValue('SELECT ID FROM DOGS D WHERE D.ID = ' + id)
* match test == id