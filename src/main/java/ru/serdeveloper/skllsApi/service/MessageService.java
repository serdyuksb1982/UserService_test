package ru.serdeveloper.skllsApi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import ru.serdeveloper.skllsApi.domian.Message;
import ru.serdeveloper.skllsApi.repository.MessageRepository;

@Service
public class MessageService {
    @Autowired
    private MessageRepository messageRepository;

    public Page<Message> messageList() {
        return null;
    }
}
