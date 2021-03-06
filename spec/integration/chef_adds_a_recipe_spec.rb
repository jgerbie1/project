require 'rails_helper.rb'

feature"Chef adds a recipe" do
    scenario "Chef successfully navigates to the new recipe page from the listing recipes page" do
        visit recipes_path
        expect(page).to have_content("Recipe Finder")
        click_link "Create Recipe"
        expect(page).to have_content("Recipe Finder")
        expect(page).to have_field("Title")
        expect(page).to have_field("Description")
        expect(page).to have_field("Instruction")
        expect(page).to have_field("Ingredients")
    end
    
    scenario "Chef successfully creates a new recipe" do
        visit new_recipe_path
        expect(page).to have_content("Recipe Finder")
        fill_in "Title", with: "New Capybara Recipe"
        fill_in "Description", with: "This is a new Capybara Recipe"
        fill_in "Instruction", with: "This is a new Capybara Instructions"
        fill_in "Ingredients", with: "This is a new Capybara Ingredients"
        click_button "Create Recipe"
    end
    # scenario "Chef successfully edits a recipe" do
    #     visit edit_recipe_path(recipe)
    #     expect(page).to have_content "Editing recipes"
    #     fill_in "description", with: "I really love this recipe."
    #     click_button "Update Recipe"
    #     expect(page).to have_content("description edited for testing")
    #     expect(page).not_to have_content("Create Comment")
    # end
end