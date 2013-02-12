describe 'Domain', ->
  it 'has default values', ->
    dom = new ErdExplorer.Models.Domain()
    expect(dom.get 'name').toBe ''

  it 'can be created with values', ->
    dom = new ErdExplorer.Models.Domain
      name: 'ErdExplorer'
    expect(dom.get 'name').toBe 'ErdExplorer'

describe 'Domains', ->
  it 'Can add Model instances as objects and arrays.', ->
    doms = new ErdExplorer.Collections.Domains()
    expect(doms.length).toBe 0
    doms.add
      name: 'ErdExplorer1'
    # how many domains have been added so far?
    expect(doms.length).toBe 1
    doms.add [
      { name: 'ErdExplorer2' }
      { name: 'ErdExplorer3' }
    ]
    # how many are there in total now?
    expect(doms.length).toBe 3

  it 'Can have a url property to define the basic url structure for all contained models.', ->
    doms = new ErdExplorer.Collections.Domains();
    expect(doms.url).toBe('/erd_explorer/domains');