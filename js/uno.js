function fill_table() {
	$.ajax("lib/create_table.php", {
		success: function show_table_json(x) {
			document.getElementById("table").innerHTML = "";
			// $("#table").html("<ul style='list-style-type: none;' id='cards'></ul>");
			for (var i = 0; i < 7; i++) {
				var color = x[i].color;
				switch (color) {
					case "green":
						var t =
							"<li class='d-inline text-success pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "blue":
						var t =
							"<li class='d-inline text-primary pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "red":
						var t =
							"<li class='d-inline text-danger pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "yellow":
						var t =
							"<li class='d-inline text-warning pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
				}
			}

			$.each(function(i, x) {
				$("#table").append("<li>" + x.card_name + "</li>");
			});
			// $("#fill_button").attr("disabled", "disabled");
		}
	});
}

$(document).ready(function() {
	show_opponent();
	show_number_of_cards();
	show_playing_card();
	show_cards_timer();
});

function show_opponent() {
	if (
		document.getElementById("opponent").innerHTML == "Waiting for opponent..."
	) {
		setInterval(function() {
			$("#opponent")
				.load("lib/show_opponent.php")
				.fadeIn("slow");
		}, 3000);
	}
}

function show_number_of_cards() {
	setInterval(function() {
		$("#opp_cards")
			.load("lib/show_number_of_cards.php")
			.fadeIn("slow");
	}, 3000);
}

function show_number_of_cards() {
	setInterval(function() {
		$("#opp_cards")
			.load("lib/show_number_of_cards.php")
			.fadeIn("slow");
	}, 3000);
}

function show_playing_card() {
	setInterval(function() {
		$("#playing_card")
			.load("lib/show_playing_card.php")
			.fadeIn("slow");
	}, 3000);
}

function show_cards_timer() {
	setInterval(function() {
		if (!$("#table")) {
			show_cards();
		}
	}, 2000);
}

function show_cards() {
	$.ajax("lib/show_cards.php", {
		success: function show_table_json(x) {
			document.getElementById("table").innerHTML = "";
			// $("#table").html("<ul style='list-style-type: none;' id='cards'></ul>");
			for (var i = 0; i < 7; i++) {
				var color = x[i].color;
				switch (color) {
					case "green":
						var t =
							"<li class='d-inline text-success pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "blue":
						var t =
							"<li class='d-inline text-primary pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "red":
						var t =
							"<li class='d-inline text-danger pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "yellow":
						var t =
							"<li class='d-inline text-warning pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
				}
			}

			$.each(function(i, x) {
				$("#table").append("<li>" + x.card_name + "</li>");
			});
			// $("#fill_button").attr("disabled", "disabled");
		}
	});
}
