module AvaTax
  class Client
    module Notifications 


      # Mark a single notification as dismissed.
      #
      # Marks the notification identified by this URL as dismissed.
      #
      # A notification is a message from Avalara that may have relevance to your business. You may want
      # to regularly review notifications and then dismiss them when you are certain that you have addressed
      # any relevant concerns raised by this notification.
      #
      # An example of a notification would be a message about new software, or a change to AvaTax that may
      # affect you, or a potential issue with your company's tax profile.
      #
      # When you dismiss a notification, the notification will track the user and time when it was
      # dismissed. You can then later review which employees of your company dismissed notifications to
      # determine if they were resolved appropriately.
      # @param id [Integer] The id of the notification you wish to mark as dismissed.
      # @return [Object]
      def dismiss_notification(id)
        path = "/api/v2/notifications/#{id}/dismiss"
        put(path)
      end


      # Retrieve a single notification.
      #
      # Retrieve a single notification by its unique ID number.
      #
      # A notification is a message from Avalara that may have relevance to your business. You may want
      # to regularly review notifications and then dismiss them when you are certain that you have addressed
      # any relevant concerns raised by this notification.
      #
      # An example of a notification would be a message about new software, or a change to AvaTax that may
      # affect you, or a potential issue with your company's tax profile.
      # @param id [Integer] The id of the notification to retrieve.
      # @return [Object]
      def get_notification(id)
        path = "/api/v2/notifications/#{id}"
        get(path)
      end


      # List all notifications.
      #
      # List all notifications.
      #
      # A notification is a message from Avalara that may have relevance to your business. You may want
      # to regularly review notifications and then dismiss them when you are certain that you have addressed
      # any relevant concerns raised by this notification.
      #
      # An example of a notification would be a message about new software, or a change to AvaTax that may
      # affect you, or a potential issue with your company's tax profile.
      #
      # You may search for specific objects using the criteria in the `$filter` parameter; full documentation is available on [Filtering in REST](http://developer.avalara.com/avatax/filtering-in-rest/) .
      # Paginate your results using the `$top`, `$skip`, and `$orderby` parameters.
      # @param filter [String] A filter statement to identify specific records to retrieve. For more information on filtering, see [Filtering in REST](http://developer.avalara.com/avatax/filtering-in-rest/) .
      # @param top [Integer] If nonzero, return no more than this number of results. Used with `$skip` to provide pagination for large datasets. Unless otherwise specified, the maximum number of records that can be returned from an API call is 1,000 records.
      # @param skip [Integer] If nonzero, skip this number of results before returning data. Used with `$top` to provide pagination for large datasets.
      # @param orderBy [String] A comma separated list of sort statements in the format `(fieldname) [ASC|DESC]`, for example `id ASC`.
      # @return [FetchResult]
      def list_notifications(options={})
        path = "/api/v2/notifications"
        get(path, options)
      end

    end
  end
end