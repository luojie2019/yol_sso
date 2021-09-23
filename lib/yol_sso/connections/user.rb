module YolSso
  module Connection
    module User
      def get_user(userid)
        JSON.parse(redis.get("userinfo_#{userid}")) rescue nil
      end

      def get_users(params)
        http_get(users_path, params)
      end

      def get_menus(userid)
        JSON.parse(redis.get("menus_#{agentid}_#{userid}")) rescue nil
      end

      def get_api_list(userid)
        JSON.parse(redis.get("accesses_#{agentid}_#{userid}")) rescue nil
      end

      private

      def users_path
        "open_api/users"
      end
    end
  end
end
