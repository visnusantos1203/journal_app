require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  
  test 'should go to /categories path' do #index
    get categories_path

    assert_response :success
  end
  
  test 'should go to /categories/:id path' do #show
    get category_show_path params: {id: 1}

    assert_response :success
  end

  test 'should go to /categories/new path' do #new
    get category_new_path 

    assert_response :success
  end

  test "should redirect to /categories path after category created" do #create
    post category_create_path params: { category: 
                                    { name: "Category2", 
                                      details: "test2"}}
    assert_response :redirect
  end

  test 'should go to /categories/edit/:id path' do
    get category_edit_path params: {id: 1}

    assert_response :success
  end

  test 'should redirect to /categories path after update' do
    post category_create_path params: { category: 
                                    { id: 1,
                                      name: "Category2", 
                                      details: "test2"}}
    assert_response :redirect
  end

end
