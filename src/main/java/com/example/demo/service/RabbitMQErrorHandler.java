package com.example.demo.service;

import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.listener.api.RabbitListenerErrorHandler;
import org.springframework.amqp.rabbit.support.ListenerExecutionFailedException;
import org.springframework.stereotype.Component;

@Component
public class RabbitMQErrorHandler implements RabbitListenerErrorHandler{

	@Override
	public Object handleError(Message amqpMessage, org.springframework.messaging.Message<?> message,
			ListenerExecutionFailedException exception) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("mqErrorHandler essage="+amqpMessage);
		return null;
	}
	
}
