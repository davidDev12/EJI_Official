import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'EJI Application',
          'insert text': 'please insert some text',
          'email not': 'sorry ! the emaai is not correct ',
          'password not': 'sorry! the password is not correct',
          'welcomeadmin': 'you loged in as admin !',
          'welcomenormal': 'welcome to EJI Application',
          'loginnot': 'Password || email not correct !!',
          'passempty': 'Please enter a valid password',
          'emailempty': 'Please enter a valid email',
          'team': 'Team',
          'teamsub': ' team matches ....',
          'PlayersList': 'Players List',
          'PlayersListsub': ' players list and thier info',
          'PlayerStatistics': ' Player Rankings',
          'PlayerStatisticssub': ' players statistics and thier rankings', 
          'AboutEJI': 'About EJI',
          'AboutEJIsub': 'about EJI, Its Philosophy and Laws',
          'SignOut': ' Sign Out',
          'SignOutsub': ' sign out of the app',
          'Staff': ' Staff',
          'staffList': ' staff List / info',
          'Staffsub': ' Staff',
          'AddPlayer': ' Add Player',
          'AddPlayersub': ' Add Player to the team ',
          'PlayerPosition': ' Player Position',
          'FullName': ' Full Name',
          'insertname': ' insert name',
          'insertemail': ' insert email',
          'PhoneNumber': ' Phone Number',
          'insertphonenumber': ' insert phone number',
          'PlaceOfBirth': ' Place Of Birth',
          'selectdate': ' select date',
          'DateOfBirth': ' Date Of Birth',
          'RegesterDate': ' Regesteration Date',
          'Submit': ' Submit',
          'confirmSave': ' Are you sure you want to Save?!',
          'Alert': ' Alert',
          'Imagenotuploaded': ' Image not uploaded !!!',
          'Update': ' Update',
          'Cancel': ' Cancel',
          'UploadComplete': ' Upload Complete !',
          'PleaseuploadPhoto': ' Please upload a Photo !',
          'Fillfields': ' Fill the fields first?!',
          'PlayerName': ' Player Name : ',
          'Date&PlaceofBirth': ' Date & Place of Birth :',
          'Email': ' Email : ',
          'PhoneNumber:': ' Phone Number : ',
          'Position': ' Position : ',
          'PlayerScores:': ' Player Scores :',
          'teamManager': ' Team Management',
          'teamManagersub': ' manage Team squad .....',
          'MatchDay': ' MatchDay ',
          'MatchDetails': ' Match Details',
          'MatchType': ' Match Type :',
          'AddMatch': ' Add a Match ',
          'Friendly': ' Friendly',
          'Competetion': ' Competetion',
          'Qualifications': ' Qualifications',
          'Training': ' Training',
          'Schedueled': 'Schedueled',
          'HomeTeam': ' Home Team',
          'insertHomeTeam': ' insert Home Team',
          'AwayTeam': ' Away Team',
          'insertAwayTeam': ' insert Away Team',
          'Score': ' Score',
          'insertScore': ' insert Score',
          'MacthDate': ' Match Date',
          'selectMacthDate': ' select Macth Date !',
          'RefereeName': ' Referee Name',
          'insertRefereeName': ' insert Referee Name',
          'SomethingMissing': ' Something is missing !',
          'Comments': ' Comments !',
          'Commentssub': ' Comments Remarks and Sugestions !',
          'Remarks&Sugestion': ' Remarks & Sugestions',
          'Subject': ' Subject : ',
          'By': ' By : ',
          'Date': ' Date : ',
          'AddRemark': ' Add your Remark or Comment ',
          'insertComment': ' insert your comment',
          'insertSubject': ' insert subject',
          'insertYourname': ' insert Your name',
          'AddRemarksub': ' you are responsible of your words',
          'YourComsav': ' Your Comment Is Sent',
          'Succsess': ' Succsess !',
          'Error': ' Error !',
          'notsaved': ' not sent !',
          'EJIBudget': ' Budget : ',
          'EJILaw': ' EJI Regulations !',
          'MatchRef': ' Match Referee Name : ',
          'Played Seasons': 'Seasons Played',
          'EJIRegulations': ' EJI Regulations ',
          'insertSpenton': ' insert the Item you bought !',
          'DateSpent': ' Date Spent',
          'selectDateSpent': ' select Date Spent',
          'Send': ' Send ',
          'Saved': ' Saved',
          'inserAmountSpentiMad': ' inser Amount Spent in Mad',
          'onlyNumbersAlowed': ' only Numbers are Allowed',
          'AddSpendings': ' Add Spendings !',
          'spentOn': ' Item Spent On ',
          'spentBy': ' Spent By ',
          'spentOnDate': ' Spent On Date',
          'spentAmount': ' Spent Amount',
          'deleted': ' deleted !',
          'notDeleted': ' not deleted !',
          'ClubTransactions': ' Club Transactions',
          'President': ' President',
          'TechnicalStuff': ' Technical Stuff',
          'Main Coach': ' Main Coach',
          'Assistant Coach': ' Assistant Coach',
          'Physical Trainer': ' Physical Trainer',
          'Medical Assistant': ' Medical Assistant',
          'AdminStaff': ' Admin-Staff',
          'Coordinators': ' Coordinators',
          'Chief Excutive': ' Chief Excutive',
          'Finance Director': ' Finance Director',
          'Councellors': ' Councellors',
          'EJI Staff': ' EJI Staff',
          'CurrentSituation': ' This is the Current Situation',
          'Frifgssendly': ' Application',
          'Frifgssendly': ' Application',
        },
        'ar': {
          'title': 'تطبيق EJI ',
          'insert text': 'المرجو ادخال نص',
          'email not': 'اسف !الإمايل غير صحيح ',
          'password not': 'اسف !القن غير صحيح',
          'welcomeadmin': 'دخول اداري',
          'welcomenormal': 'مرحبا في تطبيق ',
          'loginnot': 'اسف !الإمايل او القن غير صحيح !!',
          'passempty': 'المرجو ادخال قن صحيح  ',
          'emailempty': 'المرجو ادخال الإمايل صحيح',
          'team': 'الفريق',
          'teamsub': '  مبارياة الفريق ....',
          'PlayersList': 'لائحة اللاعبين',
          'PlayersListsub': ' لائحة اللاعبين ',
          'PlayerStatistics': '  تقييمات اللاعبين',
          'PlayerStatisticssub': ' احصائيات اللاعبين و تصنيفهم',
          'AboutEJI': 'حول EJI',
          'AboutEJIsub': 'حول EJI,  فلسفة الفريق',
          'SignOut': 'الخروج',
          'SignOutsub': ' الخروج من التطبيق',
          'Staff': ' الإدارة',
          'staffList': 'لائحة الإدارة ',
          'Staffsub': ' الإدارة',
          'AddPlayer': ' أظف لاعب',
          'AddPlayersub': 'أظف لاعب للفريق ',
          'PlayerPosition': 'مركز اللعب',
          'FullName': ' الإسم الكامل',
          'insertname': ' ادخل الإسم',
          'insertemail': ' ادخل الإيمايل',
          'PhoneNumber': ' الهاتف',
          'insertphonenumber': ' ادخل الهاتف',
          'PlaceOfBirth': 'مكان الإزدياد',
          'selectdate': ' اختر التاريخ',
          'DateOfBirth': ' تاريخ الميلاد',
          'RegesterDate': ' تاريخ التسجيل',
          'Submit': ' حفظ',
          'confirmSave': ' تاكيد الحفظ',
          'Alert': ' نتبيه',
          'Imagenotuploaded': ' لم يتم تحميل الصورة ؟ّّ',
          'Update': ' تحديث',
          'Cancel': ' إلغاء',
          'UploadComplete': ' تم رفع الصورة ',
          'PleaseuploadPhoto': ' المرجو تحميل الصورة',
          'Fillfields': ' املا الخانات',
          'PlayerName': ' اسم اللاعب  ',
          'Date&PlaceofBirth': ' تاريخ ومكان الإزدياد ',
          'Email': ' الإيمايل  ',
          'PhoneNumber:': ' رقم الهاتف  ',
          'Position': ' مركز اللعب  ',
          'PlayerScores:': ' تقييم اللاعب ',
          'teamManager': ' اعدادت الفريق',
          'teamManagersub': ' التشكيلة .....',
          'MatchDay': ' مباراة ',
          'MatchDetails': ' تفاصيل المباراة',
          'MatchType': 'نوع المباراة :',
          'AddMatch': ' أظف مباراة ',
          'Friendly': ' مباراة ودية   ',
          'Competetion': ' مباراة منافسة',
          'Qualifications': ' مباراة اقصائية',
          'Training': ' مباراة تدريبية',
          'Schedueled': 'مباراة مبرمجة ',
          'HomeTeam': ' الفريق المستقبل',
          'insertHomeTeam': 'الفريق المستقبل',
          'AwayTeam': ' الفريق الزائر',
          'insertAwayTeam': 'الفريق الزائر',
          'Score': ' النتيجة',
          'insertScore': ' ادخل النتيجة',
          'MacthDate': 'تاريخ المباراة',
          'selectMacthDate': 'تاريخ المباراة',
          'RefereeName': ' إسم الحكم',
          'insertRefereeName': ' إسم الحكم',
          'SomethingMissing': ' حدث خطب ما',
          'Comments': ' إقتراحات ',
          'Commentssub': 'إقتراحات وتعليقات ',
          'Remarks&Sugestion': 'إقتراحات وتعليقات ',
          'Subject': ' الموضوع  ',
          'By': ' من : ',
          'Date': ' التاريخ  ',
          'AddRemark': ' أظف إقتراح او تعليق ',
          'insertComment': ' أظف إقتراح او تعليق ',
          'insertSubject': 'الموضوع',
          'insertYourname': ' اظف الإسم',
          'AddRemarksub': ' أنت مسؤول عن كلماتك',
          'YourComsav': ' تم الإرسال',
          'Succsess': ' نجاح !',
          'Error': ' خطأ !',
          'notsaved': 'لم  يتم الإرسال',
          'EJIBudget': ' الميزانية  ',
          'EJILaw': ' EJI القانون الأساسي لـ !',
          'MatchRef': '  :إسم الحكم',
          'PlayedSeasons': ' عددالمواسم ',
          'EJIRegulations': ' EJI القانون الأساسي لـ !',
          'insertSpenton': ' اظف السلعة المقتنات',
          'DateSpent': ' بتاريخ',
          'selectDateSpent': ' اختر التاريخ',
          'Send': ' ارسل ',
          'Saved': ' تم الحفظ',
          'inserAmountSpentiMad': ' ادخل المبلغ ',
          'onlyNumbersAlowed': ' ارقام فقط',
          'AddSpendings': ' أظف النفقات',
          'spentOn': ' المنفق عليه ',
          'spentBy': 'من طرف ',
          'spentOnDate': ' بتاريخ ',
          'spentAmount': ' المبلغ',
          'deleted': ' تم الحذف !',
          'notDeleted': ' لم يتم الحذف !',
          'ClubTransactions': ' معاملات النادي',
          'President': ' الرئـيس ',
          'TechnicalStuff': ' الطاقم التقني ',
          'Main Coach': 'المدرب الأساسي',
          'Assistant Coach': ' مساعد المدرب',
          'Physical Trainer': ' المعد البدني',
          'Medical Assistant': ' الطاقم الطبي',
          'AdminStaff': ' الطاقم الإداري',
          'Coordinators': ' المنسقين',
          'Chief Excutive': ' المدير التنفيذي',
          'Finance Director': ' مدير الخزينة',
          'Councellors': ' المستشارين',
          'EJI Staff': ' EJI طاقم',
          'CurrentSituation': ' هذه الوضعية الحالية',
          'Frifgssendly': ' Application',
          'Frifgssendly': ' Application',
        },
      };
}
