#
# # Silversmith
#
# The static site compiler with lazy files.
#




class Silversmith
  constructor: (@_src, @_ignore) ->
    if not (@ instanceof Silversmith) then return new Silversmith arguments...



module.exports = Silversmith
