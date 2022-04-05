package ru.serdeveloper.skllsApi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.serdeveloper.skllsApi.domian.Message;

import java.util.List;

/**
 * @author Serdyuk S.B.
 */
public interface MessageRepo extends JpaRepository<Message, Long> {
    List<Message> findByTag(String tag);
}
