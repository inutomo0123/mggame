class Path
  def self.get
    return [
      { name: 'Risk' },
      { name: 'Decision',
        classes: [
          { name: 'zairyoukounyuu',
            actions: [
              { name: 'index' },
              { name: 'new' }
              ]
          },
          { name: 'zairyoukounyuu_detail' } ,
          ]},
      { name: 'Journal' }
    ]


  end
end
