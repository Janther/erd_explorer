describe 'Relationship', ->
  it 'has default values', ->
    rel = new ErdExplorer.Models.Relationship()
    expect(rel.get 'indirect').toBe false
    expect(rel.get 'mutual').toBe false
    expect(rel.get 'strength').toBe 0

  it 'can be created with values', ->
    rel = new ErdExplorer.Models.Relationship
      indirect: true
      mutual: true
      strength: 1
    expect(rel.get 'indirect').toBe true
    expect(rel.get 'mutual').toBe true
    expect(rel.get 'strength').toBe 1

  it 'belongs to an domain', ->
    dom = new ErdExplorer.Models.Domain
      name: 'ErdExplorer'
    rel = new ErdExplorer.Models.Relationship
      domain: dom
    expect(rel.get('domain').get 'name').toBe 'ErdExplorer'

  it 'belongs to a source', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    rel = new ErdExplorer.Models.Relationship
      source: entity
    expect(rel.get('source').get 'name').toBe 'User'

  it 'belongs to a destination', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    rel = new ErdExplorer.Models.Relationship
      destination: entity
    expect(rel.get('destination').get 'name').toBe 'User'

  it 'source and a destination can be the same entity', ->
    entity = new ErdExplorer.Models.Entity
      name: 'User'
    rel = new ErdExplorer.Models.Relationship
      source: entity
      destination: entity
    expect(rel.get('source').get 'name').toBe 'User'
    expect(rel.get('destination').get 'name').toBe 'User'

describe 'Relationships', ->
  it 'Can add Model instances as objects and arrays.', ->
    rels = new ErdExplorer.Collections.Relationships()
    expect(rels.length).toBe 0
    rels.add
      indirect: false
      mutual: true
      strength: 1
    expect(rels.length).toBe 1
    rels.add [
      { indirect: false, mutual: true }
      { strength: 2}
    ]
    expect(rels.length).toBe 3

  it 'Can have a url property to define the basic url structure for all contained models.', ->
    rels = new ErdExplorer.Collections.Relationships();
    expect(rels.url).toBe('/erd_explorer/relationships');