class Member < ActiveRecord::Base

	#============================================================================
	# Member Statuses
	#============================================================================
	STATUS_ACTIVE     = 'active'
	STATUS_INACTIVE   = 'inactive'
	STATUS_GUEST      = 'guest'
	STATUS_LEFT       = 'left'
	
	def Member.get_fullname( an_id )
		mlist = Member.find(:all,:conditions => "id = #{an_id}")
		if mlist.nil? or (mlist.length < 1)
			'Unknown Person'
		else
			mlist[0].full_name
		end
	end

	
	def Member.get_email_addr( an_id )
		mlist = Member.find(:all,:conditions => "id = #{an_id}")
		if mlist.nil? or (mlist.length < 1)
			nil
		else
			mlist[0].email
		end
	end
	
	
	
	

end
