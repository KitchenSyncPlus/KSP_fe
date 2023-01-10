require 'rails_helper' 

RSpec.describe 'Recipes' do
   describe '#show' do 
    before :each do 
      @group = create(:group)
      @recipe = @group.recipes.create!(label: "Toast")
   
      visit group_path(@group)
    end
    it 'I see a recipe for the group' do 
          expect(page).to have_link("#{@recipe.label}")
          click_link("#{@recipe.label}")
          expect(current_path).to eq(recipe_path(@recipe))
    end
   end

end