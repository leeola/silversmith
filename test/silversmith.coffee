#
# # Silversmith Tests
#
Silversmith = require '../lib'




describe 'Silversmith', ->
  
  it 'should not require the `new` keyword', ->
    Silversmith().should.be.instanceOf Silversmith
    
