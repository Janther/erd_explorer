describe 'Domain', ->
  it 'has default values', ->
    dom = new ErdExplorer.Models.Domain()
    expect(dom.get 'name').toBe ''

  it 'can be created with values', ->
    dom = new ErdExplorer.Models.Domain
      name: 'ErdExplorer'
    expect(dom.get 'name').toBe 'ErdExplorer'

  it 'has many entities', ->
    dom = new ErdExplorer.Models.Domain
      name: 'ErdExplorer'
    expect(dom.get('entities').length).toBe 0
    entity1 = new ErdExplorer.Models.Entity
      name: 'User'
      domain: dom
    expect(dom.get('entities').length).toBe 1
    entity2 = new ErdExplorer.Models.Entity
      name: 'Role'
      domain: dom
    expect(dom.get('entities').length).toBe 2

  it 'has many relationships', ->
    dom = new ErdExplorer.Models.Domain
      name: 'ErdExplorer'
    expect(dom.get('relationships').length).toBe 0
    entity1 = new ErdExplorer.Models.Relationship
      domain: dom
    expect(dom.get('relationships').length).toBe 1
    entity2 = new ErdExplorer.Models.Relationship
      domain: dom
    expect(dom.get('relationships').length).toBe 2

describe 'Domains', ->
  it 'Can add Model instances as objects and arrays.', ->
    doms = new ErdExplorer.Collections.Domains()
    expect(doms.length).toBe 0
    doms.add
      name: 'ErdExplorer1'
    expect(doms.length).toBe 1
    doms.add [
      { name: 'ErdExplorer2' }
      { name: 'ErdExplorer3' }
    ]
    expect(doms.length).toBe 3

  it 'Can have a url property to define the basic url structure for all contained models.', ->
    doms = new ErdExplorer.Collections.Domains();
    expect(doms.url).toBe('/erd_explorer/domains');