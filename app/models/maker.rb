class Maker < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Mizuno' },
    { id: 3, name: 'Li-Ning' },
    { id: 4, name: 'VICTOR' },
    { id: 5, name: 'Wilson' },
    { id: 6, name: 'IT' },
    { id: 7, name: 'GOSEN' },
    { id: 8, name: 'Babolat' }
  ]
  include ActiveHash::Associations
  has_many :items
end
