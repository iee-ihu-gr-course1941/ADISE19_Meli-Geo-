function fill_table() {
	$.ajax({
		url: "uno.php/board",
		method: "POST",
		success: function show_table_json(x) {
			document.getElementById("table").innerHTML = "";
			for (var i = 0; i < 7; i++) {
				var color = x[i].color;
				switch (color) {
					case "no_color":
						var t =
							"<li class='d-inline h3 text-dark pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "green":
						var t =
							"<li class='d-inline h3 text-success pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "blue":
						var t =
							"<li class='d-inline h3 text-primary pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "red":
						var t =
							"<li class='d-inline h3 text-danger pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "yellow":
						var t =
							"<li class='d-inline h3 text-warning pr-2 border border-dark'>" +
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

$(document).on("click", "#do_move", function() {
	var card = $("#move").val();
	var a = card.trim();

	$.ajax({
		url: "uno.php/board/card/" + a,
		method: "PUT",
		dataType: "json",
		contentType: "application/json",
		success: do_move
	});
});

function do_move() {}

$(document).ready(function() {
	show_opponent();
	show_number_of_cards();
	show_playing_card();
	show_remaining_deck();
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
	}, 2000);
}

function show_remaining_deck() {
	setInterval(function() {
		$("#remaining_deck")
			.load("lib/show_remaining_deck.php")
			.fadeIn("slow");
	}, 2000);
}

function show_playing_card() {
	setInterval(function() {
		$("#playing_card")
			.load("lib/show_playing_card.php")
			.fadeIn("slow");
	}, 2000);
}

function show_cards_timer() {
	setInterval(function() {
		show_cards();
	}, 3000);
}

function show_cards() {
	$.ajax("lib/show_cards.php", {
		success: function show_table_json(x) {
			document.getElementById("table").innerHTML = "";
			// $("#table").html("<ul style='list-style-type: none;' id='cards'></ul>");
			for (var i = 0; i < 7; i++) {
				var color = x[i].color;
				switch (color) {
					case "no_color":
						var t =
							"<li class='d-inline h3 text-dark pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "green":
						var t =
							"<li class='d-inline h3 text-success pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "blue":
						var t =
							"<li class='d-inline h3 text-primary pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "red":
						var t =
							"<li class='d-inline h3 text-danger pr-2 border border-dark'>" +
							x[i].card_name +
							"</li>";
						$("#table").append(t);
						break;
					case "yellow":
						var t =
							"<li class='d-inline h3 text-warning pr-2 border border-dark'>" +
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
