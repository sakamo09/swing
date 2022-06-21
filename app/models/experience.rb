class Experience < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1年未満' },
    { id: 3, name: '1〜3年' },
    { id: 4, name: '3年〜5年' },
    { id: 5, name: '5年以上' }
  ]
  end