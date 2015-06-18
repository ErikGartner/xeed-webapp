MochaWeb?.testOnly ->

  describe 'Campaign collection', ->

    beforeEach ->
      Campaigns.remove {}

    it 'should accept full dicts', ->

      data =
        name: 'DC'
        players: ['1']
        gamemasters: ['2']
        description: 'VtM in DC'

      res = Campaigns.insert data
      chai.expect(res).to.not.be.undefined

    it 'be able to remove dicts', ->
      data =
        name: 'DC'
        players: ['1']
        gamemasters: ['2']
        description: 'VtM in DC'

      res = Campaigns.insert data
      chai.expect(res).to.not.be.undefined
      Campaigns.remove {_id:res}
      chai.expect(Campaigns.find({}).count()).to.be.equal(0)

    it 'should not accept dicts without name field', ->

      data =
        players: ['1']
        gamemasters: ['2']
        description: 'VtM in DC'

      chai.expect(-> Campaigns.insert data).to.throw('Name is required')


    it 'should not accept dicts with less than 1 gamemasters', ->

      data =
        Name: 'DC'
        players: ['1']
        gamemasters: []
        description: 'VtM in DC'

      chai.expect(-> Campaigns.insert data).to.throw()
