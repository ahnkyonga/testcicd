package com.example.demo.service;

import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
public class RabbitMQListener {

	@RabbitListener(queues= {"LOG_PTCL"}, errorHandler = "rabbitMQErrorHandler")
	public void recieve(final Message message) {
		System.out.println("QUEUE LISTENER message="+message);
		String guid = message.getMessageProperties().getHeader("GUID");
		System.out.println("QUEUE LISTENER guid="+guid);
	}
}
