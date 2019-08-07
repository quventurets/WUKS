class LoginController < ApplicationController
    layout 'template_top.html.erb'

    before_action :forbid_login_user,{only: [:new,:create,:login_form,:login]}
    before_action :ensure_correct_user,{only: [:show]}

    def show
      @user = User.find_by(id: params[:id])
    end

    def login_form
    end
    
    def login
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          #flash[:notice] = "ログインしました"
          redirect_to("/")
      else
          @error_message = "※メールアドレスまたはパスワードが間違っています"
          @email = params[:email]
          @password = params[:password]
          render("/login/login_form")
      end
    end

    def new
      @user = User.new
    end

    def create    
      @user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password],
        kosen: params[:kosen]
      )
      if @user.save
        session[:user_id] = @user.id
        #flash[:notice] = "ユーザー登録が完了しました"
        redirect_to("/")
      else
        @error_message = "※不正な入力です"
        @name = params[:name]
        @email = params[:email]
        @password = params[:password]
        @kosen = params[:kosen]
        render("/login/new")
      end
    end
    
    def logout
      session[:user_id] = nil
      flash[:notice] = "ログアウトしました"
      redirect_to("/login")
    end

end
