class AbilityDecorator
     include CanCan::Ability
     def initialize(user)
     if user.respond_to?(:has_spree_role?) && user.has_spree_role?('store_admin')
        can [:admin, :manage], Spree::Order
        can [:admin, :index, :show], Spree::Product 
     end
   end
end
Spree::Ability.register_ability(AbilityDecorator)