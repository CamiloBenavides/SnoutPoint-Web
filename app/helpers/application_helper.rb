module ApplicationHelper
    
    def resource_name
    :user_se
     end

    def resource
    @resource ||= UserSe.new
    end

    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user_se]
    end
    
end
