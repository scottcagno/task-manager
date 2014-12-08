package com.cagnosolutions.app.tasks

import groovy.transform.CompileStatic
import org.springframework.data.repository.CrudRepository
import org.springframework.data.repository.query.Param
import org.springframework.data.rest.core.annotation.RepositoryRestResource

@CompileStatic
@RepositoryRestResource
interface TaskRepository extends CrudRepository<Task, Long> {
	List<Task> findByArchived(@Param("archived") Short archived)
	List<Task> findByStatus(@Param("status") String status)
}