module YolSso
  module Connection
    module User
      def get_user(userid)
        JSON.parse(redis.get("userinfo_#{userid}")) rescue nil
      end

      def get_menus(userid)
        JSON.parse(redis.get("menus_#{agentid}_#{userid}")) rescue nil
      end

      def get_apli_list(userid)
        JSON.parse(redis.get("accesses_#{agentid}_#{userid}")) rescue nil
      end

      private

      def send_url
        "#{host}messages"
      end
    end
  end
end
