namespace common;

abstract entity Managed {
	key ID: UUID;
	createdAt: DateTime;
	updatedAt: DateTime;
}