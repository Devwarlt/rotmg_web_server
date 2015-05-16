require 'valid_email'
require 'rickshaw'

names= %w(Darq Deyst Drac Drol Eango Eashy Eati Eendi Ehoni Gharr Iatho Iawa Idrae Iri Issz Itani Laen Lauk Lorz Oalei Odaru Oeti Orothi Oshyu Queq Radph Rayr Ril Rilr Risrr Saylt Scheev Sek Serl Seus Tal Tiar Uoro Urake Utanu Vorck Vorv Yangu Yimi Zhiar)

get '/register' do
  if ValidateEmail.valid?(params[:newGUID])
    if Account.where(:uuid => params[:guid]).blank?
      if Account.create(:uuid => params[:newGUID], :password => params[:newPassword].to_sha1, :name => names.sample, :guest => false, :maxCharSlot => 1)
        "<Success />"
      else
        "<Error>Internal Error</Error>"
      end

    else
      if Acccount.where(:uuid => params[:newGUID]).blank?
        Account.where(:uuid => params[:guid]).update_all(:uuid => params[:newGUID], :password => params[:newPassword], :guest => false)
        "<Success />"
      else
        "<Error>Duplicated email</Error>"
      end
    end
  else
    "<Error>Invalid email</Error>"
  end
end