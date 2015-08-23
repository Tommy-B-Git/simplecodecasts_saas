module UsersHelper
<<<<<<< HEAD
  
  
=======
>>>>>>> 82d12f2bb0121ffc46d17fc48d22bd3e34f4f479
  def job_title_icon
    if @user.profile.job_title == "Developer"
      "<i class='fa fa-code'></i>".html_safe
    elsif @user.profile.job_title == "Entrepreneur"
      "<i class='fa fa-lightbulb-o'></i>".html_safe
    elsif @user.profile.job_title == "Investor"
<<<<<<< HEAD
      "<i class='fa fa-dollar'></i>".html_safe 
      
    end
  end
end
=======
      "<i class='fa fa-dollar'></i>".html_safe
    end
  end
end
>>>>>>> 82d12f2bb0121ffc46d17fc48d22bd3e34f4f479
