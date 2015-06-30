describe 'Campaigns collection', ->

  beforeEach ->
    Campaigns.remove {}

  it 'should accept full dicts', ->
    expect(Campaigns.find({}).count()).toEqual(0)

    data =
      name: 'DC'
      players: ['1']
      gamemasters: ['2']
      description: 'VtM in DC'

    res = Campaigns.insert data
    expect(res).not.toEqual undefined

  it 'be able to remove dicts', ->
    expect(Campaigns.find({}).count()).toEqual(0)

    data =
      name: 'DC'
      players: ['1']
      gamemasters: ['2']
      description: 'VtM in DC'

    res = Campaigns.insert data
    expect(res).not.toEqual undefined
    Campaigns.remove {_id:res}
    expect(Campaigns.find({}).count()).toEqual(0)

  it 'should not accept dicts without name field', ->

    data =
      players: ['1']
      gamemasters: ['2']
      description: 'VtM in DC'

    expect(-> Campaigns.insert data).toThrow(new Error 'Name is required')


  it 'should not accept dicts with less than 1 gamemasters', ->

    data =
      name: 'DC'
      players: ['1']
      gamemasters: []
      description: 'VtM in DC'

    expect(-> Campaigns.insert data).toThrow(
      new Error 'You must specify at least 1 values')
