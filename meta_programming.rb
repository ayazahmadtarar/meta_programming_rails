class UserRole

	attr_accessor :role
	
	def initialize(role)
		@role = role
	end
	
	def admin_user?
	  role ==  'admin_user'
	end

	def sales_user?
	  role == 'sales_user'
	end

	def crm_user?
	    role == 'crm_user'
	end
end

puts UserRole.new('admin_user').admin_user?

class UserMetaRole

	attr_accessor :role
	
	def initialize(role)
		@role = role
	end
	
	['admin_user', 'sales_user', 'crm_user'].each do |user_role|
    define_method "#{user_role}?" do
        user_role == user_role
    end
	end
end

puts UserMetaRole.new('crm_user').crm_user?
