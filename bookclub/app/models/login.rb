class Login < ActiveRecord::Base

	#------------------------------------------------------------------------------
	# Access Levels (UA_ = User Access)
	#------------------------------------------------------------------------------
	ACCESS_NONE   = 0     # No access at all
	ACCESS_GUEST  = 1     # Very selected access
	ACCESS_NORMAL = 2     # A normal user, limited access
	ACCESS_ADMIN  = 3     # Access to all parts of the site

	#belongs_to          :member

	#validates_presence_of   :username, :password, :confirm_pwd

	#def Login.get_access_string( lvl )
	#	case lvl.to_i
	#		when ACCESS_NONE:   return "No Access"
	#		when ACCESS_GUEST:  return "Guest Access"
	#		when ACCESS_NORMAL: return "Normal User"
	#		when ACCESS_ADMIN:  return "Administrator"
	#	else
	#		return "Unknown Access: " + lvl.to_s()
	#	end
	#end

    
	def Login.allowed( user_login, pwd )
		Login.find_by(username: user_login )
	end

    
	def Login.add( new_id, user_login, pwd )
		login = Login.new
		
		login.login_id = new_id.to_i
		login.member_id = 1
		login.access_level = ACCESS_NORMAL
		login.username = user_login
		login.hashed_pwd = pwd
		
		login.save
	end

	
	def Login.delete( user_login )
		login = Login.find_by(username: user_login)
		
		if login.nil?
			return false
		end
		
		login.destroy
		return true
	end
	
end
