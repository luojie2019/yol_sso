module YolSso
  module Connection
    module Message
      def send_message(body)
        http_post(send_url, body.merge("agentid": agentid))
      end

      def deal_message(message_id)
        body = {agentid: agentid, message_id: message_id}
        http_post(deal_url, body.merge("agentid": agentid))
      end

      private

      def send_url
        "#{host}messages"
      end

      def deal_url
        "#{host}messages/deal"
      end
    end
  end
end
