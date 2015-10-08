package com.surelution.medical

class Role {

	String authority
	String name

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
	
	@Override
	public int hashCode() {
		return id;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Role) {
			return obj.id == id
		}
		return false;
	}
}
