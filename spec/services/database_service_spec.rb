require 'rails_helper'

describe DatabaseService do
    context '#recipe' do
        it 'connects to recipe endpoint' do
            recipe = DatabaseService.recipe("Avacado Salad Dressing")
            expect(recipe).to be_a(Hash)
            expect(recipe).to have_key(:label)
            expect(recipe).to have_key(:image)
            expect(recipe).to have_key(:yield)
            expect(recipe).to have_key(:ingredientLines)
            expect(recipe).to have_key(:ingredients)
            expect(recipe).to have_key(:ext_id)
            expect(recipe).to have_key(:source_url)
            expect(recipe[:ingredients][0]).to have_key(:quantity)
            expect(recipe[:ingredients][0]).to have_key(:measure)
            expect(recipe[:ingredients][0]).to have_key(:food)
            expect(recipe[:ingredients][0]).to have_key(:image)
        end
    end

    context '#groups' do
        it 'connects to groups endpoint' do
            groups = DatabaseService.groups
            expect(groups).to be_a(Hash)
            groups[:data].each do |group|
                expect(group).to have_key(:id)
                expect(group[:attributes]).to have_key(:name)
                expect(group[:attributes]).to have_key(:about)
                expect(group[:attributes]).to have_key(:users)
            end
        end
    end

    context '#user' do
        it 'connects to user endpoint' do
            user = DatabaseService.user(11)
            expect(user).to be_a(Hash)
            expect(user[:data][:attributes]).to have_key(:name)
            expect(user[:data][:attributes]).to have_key(:email)
            expect(user[:data][:attributes]).to have_key(:groups)
        end
    end
end
