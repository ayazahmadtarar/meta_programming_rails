# Meta Programming in Rails
Meta programming is the process of genrating code through code. In the example below the class UserRole implement normal scanerio where we need to wirte a lot of code. It is simple and easy to understand
```
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
```
In the metaprogramming you write a function that will write code for other functions. The problem with metaprogramming is it increase the complexitiy
```
class UserMetaRole
  
  attr_accessor :role

  def initialize(role)
    @role = role
  end

 ['admin_user', 'sales_user', 'crm_user'].each do |user_role|
   
  define_method "#{user_role}?" do
     role == user_role
   end
   
 end
 
end

puts UserMetaRole.new('crm_user').crm_user?
```
