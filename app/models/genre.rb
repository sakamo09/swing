class Genre < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ラケット' },
    { id: 3, name: 'シューズ' },
    { id: 4, name: 'グリップ' },
    { id: 5, name: 'ガッド' },
    { id: 6, name: 'ゲームシャツ' },
    { id: 7, name: 'ラケットバック' }
  ]
  end