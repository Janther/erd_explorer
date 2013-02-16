describe 'Attribute', ->
  it 'has default values', ->
    attr = new ErdExplorer.Models.Attribute()
    expect(attr.get 'name').toBe ''
    expect(attr.get 'type').toBe ''
    expect(attr.get 'mandatory').toBe false

  it 'can be created with values', ->
    attr = new ErdExplorer.Models.Attribute
      name: 'id'
      type: 'string'
      mandatory: true
    expect(attr.get 'name').toBe 'id'
    expect(attr.get 'type').toBe 'string'
    expect(attr.get 'mandatory').toBe true

  it 'belongs to an entity', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    attr = new ErdExplorer.Models.Attribute
      entity: entity
    expect(attr.get('entity').get 'name').toBe 'User'

describe 'Attributes', ->
  it 'Can add Model instances as objects and arrays.', ->
    attrs = new ErdExplorer.Collections.Attributes()
    expect(attrs.length).toBe 0
    attrs.add
      name: 'id'
      type: 'string'
      mandatory: true
    expect(attrs.length).toBe 1
    attrs.add [
      { name: 'name', type: 'string', mandatory: true }
      { name: 'value', type: 'integer' }
    ]
    expect(attrs.length).toBe 3

  it 'Can have a url property to define the basic url structure for all contained models.', ->
    attrs = new ErdExplorer.Collections.Attributes();
    expect(attrs.url).toBe('/erd_explorer/attributes');