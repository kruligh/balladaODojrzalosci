
    var messages = global.messages;
    var messagesLength = ds_list_size(messages) - 1;
    var messagePointer = round(random(messagesLength));
    
    if (messagePointer < 0) {
        messagePointer = 0;
    }
    if (messagePointer > messagesLength) {
        messagePointer = messagesLength;
    }
    
    var message = messages[| messagePointer];
    
    
      return message;
  
        
