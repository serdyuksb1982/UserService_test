package ru.serdeveloper.skllsApi.repository;

import org.springframework.data.repository.CrudRepository;
import ru.serdeveloper.skllsApi.domian.Message;

import java.util.List;

/**
 * @author Serdyuk S.B.
 */
public interface MessageRepository extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

}
