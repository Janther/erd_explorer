class ErdExplorer.Models.Domain extends Backbone.RelationalModel
  defaults:
    name: ''

  relations: [
    {
      type: Backbone.HasMany
      key: 'entities'
      relatedModel: 'ErdExplorer.Models.Entity'
      collectionType: 'ErdExplorer.Collections.Entities'
      reverseRelation:
        key: 'domain'
    }
    {
      type: Backbone.HasMany
      key: 'relationships'
      relatedModel: 'ErdExplorer.Models.Relationship'
      collectionType: 'ErdExplorer.Collections.Relationships'
      reverseRelation:
        key: 'domain'
    }
  ]