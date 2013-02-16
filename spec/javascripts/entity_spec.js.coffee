describe 'Entity', ->
  it 'has default values', ->
    entity = new ErdExplorer.Models.Entity()
    expect(entity.get 'name').toBe ''

  it 'can be created with values', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    expect(entity.get 'name').toBe 'User'

  it 'has attributes', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    expect(entity.get('attributes').length).toBe 0
    attr1 = new ErdExplorer.Models.Attribute
      entity: entity
    expect(entity.get('attributes').length).toBe 1
    attr2 = new ErdExplorer.Models.Attribute
      entity: entity
    expect(entity.get('attributes').length).toBe 2

  it 'has has_relationships', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    expect(entity.get('has_relationships').length).toBe 0
    relationship1 = new ErdExplorer.Models.Relationship
      source: entity
    expect(entity.get('has_relationships').length).toBe 1
    relationship2 = new ErdExplorer.Models.Relationship
      source: entity
    expect(entity.get('has_relationships').length).toBe 2

  it 'has belongs_to_relationships', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    expect(entity.get('belongs_to_relationships').length).toBe 0
    relationship1 = new ErdExplorer.Models.Relationship
      destination: entity
    expect(entity.get('belongs_to_relationships').length).toBe 1
    relationship2 = new ErdExplorer.Models.Relationship
      destination: entity
    expect(entity.get('belongs_to_relationships').length).toBe 2

  it 'belongs to an domain', ->
    dom = new ErdExplorer.Models.Domain
      name: 'ErdExplorer'
    entity = new ErdExplorer.Models.Entity
      domain: dom
    expect(entity.get('domain').get 'name').toBe 'ErdExplorer'

describe 'Entities', ->
  it 'Can add Model instances as objects and arrays.', ->
    entities = new ErdExplorer.Collections.Entities()
    expect(entities.length).toBe 0
    entities.add
      name: 'User'
    expect(entities.length).toBe 1
    entities.add [
      { name: 'Role' }
      { name: 'Slug' }
    ]
    expect(entities.length).toBe 3

  it 'Can have a url property to define the basic url structure for all contained models.', ->
    entities = new ErdExplorer.Collections.Entities();
    expect(entities.url).toBe('/erd_explorer/entities');