<section id="feature" style="height: 100%;">
	<div class="container" style="padding-left: 5%;">
		<div
			style="width: 100%; padding: 50px; border: solid 1px black; border-radius: 5px; box-shadow: 0px 0px 10px black; background-color: white;">
			<table id="rule_list" class="table table-bordered table-striped"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="text-align: center;">Ticket Id</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Description</th>
						<th style="text-align: center;">Created By</th>
						<th style="text-align: center;">Status</th>
					</tr>
				</thead>
				<tbody id="tbody" style="text-align: center;">

				</tbody>

				<tfoot>
					<tr>
						<th style="text-align: center;">Ticket Id</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Description</th>
						<th style="text-align: center;">Created By</th>
						<th style="text-align: center;">Status</th>
					</tr>
					</tr>
				</tfoot>
			</table>

		</div>
	</div>
</section>

<script type="text/javascript">
	$(document).ready(function() {

		$('#rule_list').dataTable({

		});

	});
</script>
