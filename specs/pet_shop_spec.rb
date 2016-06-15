require'minitest/autorun'
require_relative'../pet_shop.rb'
require_relative'../pet.rb'
require_relative'../customer.rb'



class TestPetShop < Minitest::Test
  def setup
    @customer = Customer.new("Marie", 50)

    pet_1 = Pet.new("Fire", "Charamander",25)
    pet_2 = Pet.new("Water", "Squirtle",30)
    pet_3 = Pet.new("Fire", "Charizard",25)
    pet_4 = Pet.new("Grass", "Bulbasaur",40)

    pets = [ pet_1,pet_2,pet_3,pet_4 ]

    @pet_shop = PetShop.new( pets )
  end

  def test_initial_state
    assert_equal(4, @pet_shop.number_of_pets())
  end

  def test_can_get_pet
    purchased_pet = @pet_shop.get_pet()
    assert_equal("Grass", purchased_pet.type())
  end

  def test_pet_leaves_pet_shop
    @pet_shop.get_pet()
    assert_equal(3,@pet_shop.number_of_pets())
  end

  def test_number_of_pets_sold
    
    assert_equal(1,@pet_shop.number_of_pets_sold)
  end

end