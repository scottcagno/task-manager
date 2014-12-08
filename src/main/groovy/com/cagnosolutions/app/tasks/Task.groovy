package com.cagnosolutions.app.tasks

import groovy.transform.CompileStatic
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id

@CompileStatic
@Entity
class Task {

	@Id
	@GeneratedValue
	Long id
	String name, description, priority, status
	Short archived = 0

}
