package org.hl7.davinci.endpoint.database;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;


@RepositoryRestResource
@CrossOrigin(origins = "http://localhost:4200")
@Repository
public interface RequestRepository extends CrudRepository<RequestLog, Long> {

  @Query(
      "SELECT r FROM RequestLog r")
  List<RequestLog> findLogs();
}
