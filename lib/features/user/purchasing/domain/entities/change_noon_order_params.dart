// assigned
// arrived_at_pickup_location
// picked_up
// arrived_at_delivery
// delivered

enum NoonStatus {
  assigned(status: "assigned"),
  arrivedAtPickupLocation(status: "arrived_at_pickup_location"),
  pickedUp(status: "picked_up"),
  arrivedAtDelivery(status: "arrived_at_delivery"),
  delivered(status: "delivered");

  final String status;

  const NoonStatus({required this.status});
}

class ChangeNoonOrderParams {
  final int id;
  final NoonStatus noonStatus;
  final String trackingNumber;

  ChangeNoonOrderParams({
    required this.id,
    required this.noonStatus,
    required this.trackingNumber,
  });

  Map<String, dynamic> toJson() => {
        "order_nr": trackingNumber,
        "status_code": noonStatus.status,
        "order_reference": id,
      };
}
