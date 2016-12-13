class Ability
  include CanCan::Ability

  def initialize(user)


    # Admins chave access to perform all actions on all objects
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    end


    #Non Admins can read articles
    can :read, Article

    #Logged in users can create articles and update their articles
    #unless user.new_record? means if "user.new_record" is false. This will b efalse if the user is already stored in the database i.e, the user is logged in
    unless user.new_record?
     can :create, Article
     can :update, Article, :user_id => user.id
     can :destroy, Article, :user_id => user.id
    end
   
  end
end
