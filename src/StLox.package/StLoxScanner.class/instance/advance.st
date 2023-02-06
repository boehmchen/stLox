private
advance

	| old |
	old := current.
	current := current + 1.
	^ source at: old.