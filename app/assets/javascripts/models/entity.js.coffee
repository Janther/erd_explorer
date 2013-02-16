class ErdExplorer.Models.Entity extends Backbone.RelationalModel
  defaults:
    name: ''

  relations: [
    {
      type: Backbone.HasMany
      key: 'attributes'
      relatedModel: 'ErdExplorer.Models.Attribute'
      collectionType: 'ErdExplorer.Collections.Attributes'
      reverseRelation:
        key: 'entity'
    }
    {
      type: Backbone.HasMany
      key: 'has_relationships'
      relatedModel: 'ErdExplorer.Models.Relationship'
      collectionType: 'ErdExplorer.Collections.Relationships'
      reverseRelation:
        key: 'source'
    }
    {
      type: Backbone.HasMany
      key: 'belongs_to_relationships'
      relatedModel: 'ErdExplorer.Models.Relationship'
      collectionType: 'ErdExplorer.Collections.Relationships'
      reverseRelation:
        key: 'destination'
    }
  ]