class ArticlePolicy
    attr_reader :current_user, :model
  
    def initialize(current_user, model)
      @current_user = current_user
      @article = model
    end
  
    def edit?
        @current_user.editor? and @article.user == @current_user
    end

    def create?
        @current_user.editor?
    end
  
    def new?
        @current_user.editor?
    end

    def show?
       if @current_user
            true
       else
            false
        end
    end
  
    def update?
        @current_user.editor?
    end
  
    def destroy?
        @current_user.editor?
    end
end