require 'rails_helper'

RSpec.describe "Posts API" do

  it "can view index of posts" do
    post_list = create_list(:post, 3)

    get "/api/v1/posts"

    expect(response).to be_success

    posts = JSON.parse(response.body)
    post = posts.first

    expect(posts.count).to eq(3)
    expect(post).to have_key("id")
    expect(post).to have_key("title")
    expect(post).to have_key("content")

  end

  it "can view a single post" do
    posts = create_list(:post, 3)
    id_2 = posts[1].id
    title_2 = posts[1].title
    content_2 = posts[1].content

    get "/api/v1/post/#{id_2}"

    expect(response).to be_success

    post = JSON.parse(response.body)

    expect(post).to have_key("id")
    expect(post).to have_key("title")
    expect(post).to have_key("content")
    expect(post["id"]).to eq(id_2)
    expect(post["title"]).to eq(title_2)
    expect(post["content"]).to eq(content_2)
  end
end
