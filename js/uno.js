function fill_table() {
	$.ajax("lib/show_table.php", {
		success: function show_table_json(x) {
			$("#table").html(
				"<ul class='md-auto' style='list-style-type: none;' id='cards'></ul>"
			);
			//Dimiourgia ksexwristou pinaka gia mhn pairnei parapanw apo 2 idies kartes
			var arr = [];
			while (arr.length < 7) {
				var randomnumber = Math.round(Math.random() * 14);
				if (!arr.includes(randomnumber)) {
					arr.push(randomnumber);
				}
			}
			for (var i = 0; i < arr.length; i++) {
				var color = x[arr[i]].color;
				switch (color) {
					case "green":
						var t =
							"<li class='d-inline text-success pr-2 border border-dark'>" +
							x[arr[i]].card_name +
							"</li>";
						$("UL").append(t);
						break;
					case "blue":
						var t =
							"<li class='d-inline text-primary pr-2 border border-dark'>" +
							x[arr[i]].card_name +
							"</li>";
						$("UL").append(t);
						break;
					case "red":
						var t =
							"<li class='d-inline text-danger pr-2 border border-dark'>" +
							x[arr[i]].card_name +
							"</li>";
						$("UL").append(t);
						break;
					case "yellow":
						var t =
							"<li class='d-inline text-warning pr-2 border border-dark'>" +
							x[arr[i]].card_name +
							"</li>";
						$("UL").append(t);
						break;
				}
			}

			$.each(function(i, x) {
				$("UL").append("<li>" + x.card_name + "</li>");
			});
		}
	});
}

function PlayersCards() {}
