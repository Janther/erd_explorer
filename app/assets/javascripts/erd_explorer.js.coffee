window.ErdExplorer =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new ErdExplorer.Routers.Domain()
    # new ErdExplorer.Routers.Relationships()
    # new ErdExplorer.Routers.Entities()
    # new ErdExplorer.Routers.Attributes()
    Backbone.history.start()

$(document).ready ->
  ErdExplorer.initialize()
