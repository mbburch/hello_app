require 'rails_helper'


RSpec.describe "layout links", type: :request do
    visit root_path
  expect(response).to render_template('static_pages/home')
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
end
end