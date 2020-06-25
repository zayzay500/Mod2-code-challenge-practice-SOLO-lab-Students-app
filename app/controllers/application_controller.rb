class ApplicationController < ActionController::Base
    
    def strong_params(key, *args)
        params.require(key).permit(*args)
    end
    
end
