# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # can :read, Role, public: true
    # return unless user.present?  # additional permissions for logged in users (they can read their own posts)
    # can :read, Role, user: user
    if user
      user_role = Role.where(id: user.role_id).first || Role.new
      return unless user_role.name == 'aaaa' # additional permissions for administrators
      can :read, Role
      can :read, Game
    end
  end
end
