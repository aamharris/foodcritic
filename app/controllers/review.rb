get '/users/:user_id/reviews' do
  @user = User.find(params[:user_id])
  @reviews = Review.where(user_id: @user.id)
  p @reviews
 erb :'/reviews/index'
end

get '/users/:user_id/reviews/new' do
  @user = User.find(params[:user_id])
 erb :'/reviews/new'
end

post '/users/:user_id/reviews/new' do
  @user = User.find(params[:user_id])
  @review = Review.create(rating: params[:review][:rating], content: params[:review][:content], user_id: @user.id)
  @reviews = Review.where(user_id: @user.id)
  redirect "/users/#{@user.id}/reviews"
end

get '/users/:user_id/reviews/:review_id' do
  erb :'/reviews/edit'
end

put '/users/:user_id/reviews/:review_id' do

end

delete '/users/:user_id/reviews/:review_id' do
  @user = User.find(params[:user_id])
  @review = Review.find(params[:review_id])
  @review.delete
  redirect '/users/@user.id'
end
