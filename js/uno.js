function draw_empty_table() {
	$.ajax("lib/show_table.php", {
		success: function show_table_json(x) {
			$("#table").html(
				'<table id="custtable"><thead><tr><th>Card Value</th><th>Color</th><th>Index Card</th></tr></thead><tbody></tbody></table>'
			);
			for (var i = 0; i < x.length; i++) {
				var t =
					"<tr><td>" +
					x[i].card_value +
					"</td><td>" +
					x[i].color +
					"</td><td>" +
					x[i].index_card +
					"</td></tr>";
				$("#custtable TBODY").append(t);
			}

			$.each(function(i, x) {
				$("#custtable TBODY").append(
					"<tr><td>" +
						x.card_value +
						"</td><td>" +
						x.color +
						"</td><td>" +
						x.index_card +
						"</td></tr>"
				);
			});
		}
	});
}
