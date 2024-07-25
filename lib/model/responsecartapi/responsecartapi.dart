import 'cart.dart';

class Responsecartapi {
	List<Cart>? carts;
	int? total;
	int? skip;
	int? limit;

	Responsecartapi({this.carts, this.total, this.skip, this.limit});

	factory Responsecartapi.fromJson(Map<String, dynamic> json) {
		return Responsecartapi(
			carts: (json['carts'] as List<dynamic>?)
						?.map((e) => Cart.fromJson(e as Map<String, dynamic>))
						.toList(),
			total: json['total'] as int?,
			skip: json['skip'] as int?,
			limit: json['limit'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'carts': carts?.map((e) => e.toJson()).toList(),
				'total': total,
				'skip': skip,
				'limit': limit,
			};
}
