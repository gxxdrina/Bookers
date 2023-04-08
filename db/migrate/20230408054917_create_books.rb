class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t| #テーブル名booksを作成
      t.string :title #Bookモデルのカラム名：本のタイトル
      t.string :body #本の感想
      t.timestamps
    end
  end
end
