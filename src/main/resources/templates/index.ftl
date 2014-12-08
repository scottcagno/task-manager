<html ng-app="taskManagerApp">
	<head>
		<title>Task Manager</title>
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href="/static/css/style.css" rel="stylesheet" type="text/css"/>
		<link href="/static/css/animate.css" rel="stylesheet" type="text/css"/>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
		<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.5/angular.min.js"></script>
		<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.5/angular-animate.min.js"></script>
		<script type="text/javascript" src="/static/js/app.js"></script>
	</head>
	<body>

		<div ng-controller="taskManagerController">
			<div id="task-panel" class="fadein fadeout showpanel panel" ng-show="toggle">
				<div class="panel-heading">
					<i class="panel-title-icon fa fa-tasks"></i>
					<span class="panel-title">Recent Tasks</span>
					<div class="panel-heading-controls">
						<button ng-click="toggle = !toggle" class="btn-panel">Add New Task</button>
						<button class="btn-panel" confirmed-click="archiveTasks()" ng-confirm-click="Would you like to archive completed tasks?">Clear completed tasks</button>
					</div>
				</div>
				<div class="panel-body">
					<div class="task" ng-repeat="task in tasks">
    <span ng-if="task.priority=='HIGH'" class="priority priority-red">
     {{task.priority}}
    </span>
    <span ng-if="task.priority=='MEDIUM'" class="priority priority-yellow">
     {{task.priority}}
    </span>
    <span ng-if="task.priority=='LOW'" class="priority priority-green">
     {{task.priority}}
    </span>
						<div class="action-checkbox">
							<input id="{{task._links.self.href}}" type="checkbox" value="{{task._links.self.href}}" ng-checked="selection.indexOf(task._links.self.href) > -1" ng-click="toggleSelection(task._links.self.href)" />
							<label for="{{task._links.self.href}}" ></label>
						</div>
						<div ng-if="task.status=='COMPLETED'">
							<a href="#" class="checkedClass">
								{{task.name}}
								<span class="action-status">{{task.status}}</span>
							</a>
						</div>
						<div ng-if="task.status=='ACTIVE'">
							<a href="#" class="uncheckedClass">
								{{task.name}}
								<span class="action-status">{{task.status}}</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div id="add-task-panel" class="fadein fadeout addpanel panel" ng-hide="toggle">
				<div class="panel-heading">
					<i class="panel-title-icon fa fa-plus"></i>
					<span class="panel-title">Add Task</span>
					<div class="panel-heading-controls">
						<button ng-click="toggle = !toggle" class="btn-panel">Show All Tasks</button>
					</div>
				</div>
				<div class="panel-body">
					<div class="task" >
						<table class="add-task">
							<tr>
								<td>Task Name:</td>
								<td><input type="text" ng-model="name"/></td>
							</tr>
							<tr>
								<td>Task Description:</td>
								<td><input type="text" ng-model="description"/></td>
							</tr>
							<tr>
								<td>Task Status:</td>
								<td>
									<select ng-model="status" ng-options="status as status for status in statuses">
										<option value="">-- Select --</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>Task Priority:</td>
								<td>
									<select ng-model="priority" ng-options="priority as priority for priority in priorities">
										<option value="">-- Select --</option>
									</select>
								</td>
							</tr>
							<tr>

								<p>YOUR MOM</p>
								<td>
									<button ng-click="addTask()" class="btn-panel-big">Add New Task</button></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>