def lambda_handler(event, context):
   message = 'Hello {} ! Thanks for visiting us.'.format(event['name'])
   return {
       'message' : message
   }