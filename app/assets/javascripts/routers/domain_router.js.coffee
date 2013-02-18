class ErdExplorer.Routers.Domain extends Backbone.Router
  routes:
    '': 'show'

  initialize: ->
    @domain = ErdExplorer.domain

  show: ->
    alert "Domain #{@domain.get('name')}"