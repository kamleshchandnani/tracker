
<div class="container" style="padding-left: 25%;"
	ng-controller="IssueController">
	<div
		style="width: 60%; padding: 50px; border: solid 1px black; border-radius: 5px; box-shadow: 0px 0px 10px black; background-color: white;">
		<div class="alert alert-danger" ng-show="loginStatus">
			<strong>Please Login to create issue!</strong>
		</div>
		<div class="alert alert-success" ng-show="createIssueSuccessFlag">
			<strong>Success!</strong>Issue Created
		</div>
		<div class="alert alert-danger" ng-show="createIssueErrorFlag">
			<strong>Error!</strong> Please Try Again
		</div>
		<form role="form" name="issueform" novalidate
			ng-submit="createIssue()" ng-app="tracker" ng-show="!loginStatus">
			<div class="form-group"
				ng-class="{'has-error':(submitted && issueform.title.$error.required) || (issueform.title.$error.required && !issueform.title.$pristine)}">
				<label>Title:</label>
				<div class="inner-addon left-addon">
					<i class="glyphicon glyphicon-text-width"></i> <input type="text"
						class="form-control" placeholder="Title" name="title" required
						ng-model="issue.title" /> <span
						ng-show="(submitted && issueform.title.$error.required) || (issueform.title.$error.required && !issueform.title.$pristine)"
						class="help-block">Title cannot be blank</span>
				</div>
			</div>
			<div class="form-group"
				ng-class="{'has-error':(submitted && issueform.description.$error.required) || (issueform.description.$error.required && !issueform.description.$pristine)}">
				<label>Description:</label>
				<div class="inner-addon left-addon">
					<i class="glyphicon glyphicon-edit"></i>
					<textarea class="form-control" rows="5" id="comment"
						placeholder="Description" name="description" required
						ng-model="issue.description"></textarea>
					<span
						ng-show="(submitted && issueform.description.$error.required) || (issueform.description.$error.required && !issueform.description.$pristine)"
						class="help-block">Description cannot be blank</span>

				</div>
			</div>
			<div class="form-group">
				<label>Created By:</label>
				<div class="inner-addon left-addon">
					<i class="glyphicon glyphicon-user"></i> <input type="text"
						class="form-control" name="createdby" ng-model="issue.createdby" />
				</div>
			</div>

			<div class="form-group"
				ng-class="{'has-error':(submitted && !validStatus()) || (!validStatus() && !issueform.description.$pristine)}">
				<label>Status:</label>
				<div class="inner-addon left-addon">
					<i class="glyphicon glyphicon-flag"></i> <select
						class="form-control" name="status" ng-model="issue.status"
						ng-options="optionlist.value as optionlist.label for optionlist in statuslist">
						<option value="">Select Status</option>
					</select> <span
						ng-show="(submitted && !validStatus()) || (!validStatus() && !issueform.status.$pristine)"
						class="help-block">Select proper status</span>
				</div>

			</div>
			<button type="submit" class="btn btn-danger"
				ng-click="submitted=true">
				<span class="glyphicon glyphicon-save"></span>&nbsp;Submit
			</button>
		</form>
	</div>
</div>
