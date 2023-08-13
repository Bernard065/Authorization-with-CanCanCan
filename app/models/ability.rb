class Ability
  include CanCan::Ability

  def initialize(user)
    # Abilities for managing articles
    can :read, Article
    can :create, Article if user.present?
    can :update, Article, user_id: user.id
    can :destroy, Article, user_id: user.id

    # Abilities for managing comments
    can :read, Comment
    can :create, Comment if user.present?
    can :destroy, Comment, user_id: user.id
  end
end
