MochaWeb?.testOnly ->

  describe 'Campaign collection', ->

    it 'should accept full dicts', ->
        data =
          name: 'DC'
          players: ['1']
          gamemasters: ['2']
          description: 'VtM in DC'

        res = Campaigns.insert data
        chai.assert res isnt undefined
        Campaigns.remove {_id:res}
