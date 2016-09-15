ActiveRecord::Schema.define(version: 20_160_915_084_534) do
  create_table 'articles', force: :cascade do |t|
    t.string   'title'
    t.text     'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'comments', force: :cascade do |t|
    t.string   'commenter'
    t.text     'body'
    t.integer  'article_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['article_id'], name: 'index_comments_on_article_id'
  end
end
