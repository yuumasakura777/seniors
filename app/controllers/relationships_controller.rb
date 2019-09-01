class RelationshipsController < ApplicationController

  before_action :set_user

  def create
    follow=current_user.active_relationships.build(follower_id: params[:user_id])
    follow.save
    #マッチングしているかしていないかでメールの条件分岐をする
    @f_user=User.find(params[:user_id])
    if follow_matcher(params[:user_id]).blank?
      NotificationMailer.send_follower_users(current_user, @f_user.name, @f_user.email).deliver
    else
      NotificationMailer.send_matcher_users(current_user, @f_user.name, @f_user.email).deliver
    end
    flash[:success]="#{@user.name}さんをフォローしました。"
    redirect_to user_path(params[:user_id])
  end

  def destroy

    follow=current_user.active_relationships.find_by(follower_id: params[:user_id])
    follow.destroy
    flash[:success]="#{@user.name}さんのフォローを外しました。"
    redirect_to users_path
  end

  private

    def set_user
      @user=User.find(params[:user_id])
    end

    def follow_matcher(following_id)
      Relationship.find_by(following_id: following_id)
    end


end
