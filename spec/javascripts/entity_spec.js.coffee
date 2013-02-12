describe 'Entity', ->
  it 'has default values', ->
    entity = new ErdExplorer.Models.Entity()
    expect(entity.get 'name').toBe ''

  it 'can be created with values', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    expect(entity.get 'name').toBe 'User'

describe 'Entities', ->
  it 'Can add Model instances as objects and arrays.', ->
    entities = new ErdExplorer.Collections.Entities()
    expect(entities.length).toBe 0
    entities.add
      name: 'User'
    # how many entities have been added so far?
    expect(entities.length).toBe 1
    entities.add [
      { name: 'Role' }
      { name: 'Slug' }
    ]
    # how many are there in total now?
    expect(entities.length).toBe 3

  it 'Can have a url property to define the basic url structure for all contained models.', ->
    entities = new ErdExplorer.Collections.Entities();
    expect(entities.url).toBe('/erd_explorer/entities');