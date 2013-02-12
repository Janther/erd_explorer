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

describe 'Relationships', ->
  it 'Can add Model instances as objects and arrays.', ->
    rels = new ErdExplorer.Collections.Relationships()
    expect(rels.length).toBe 0
    rels.add
      indirect: false
      mutual: true
      strength: 1
    # how many relationships have been added so far?
    expect(rels.length).toBe 1
    rels.add [
      { indirect: false, mutual: true }
      { strength: 2}
    ]
    # how many are there in total now?
    expect(rels.length).toBe 3

  it 'Can have a url property to define the basic url structure for all contained models.', ->
    rels = new ErdExplorer.Collections.Relationships();
    expect(rels.url).toBe('/erd_explorer/relationships');