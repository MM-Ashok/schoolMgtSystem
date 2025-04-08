<?php
use App\Http\Controllers\SliderController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\SkillController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\MediaController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\Auth\TeacherRegister;
use App\Http\Controllers\GlobalSetting;
use App\Http\Controllers\ContactController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/page/home');
});

Auth::routes();

Route::get('teacher-register',[TeacherRegister::class, 'teacherRegister']);
Route::post('teacher-register',[TeacherRegister::class, 'teacherCreate']);

Route::get('student-register',[TeacherRegister::class, 'studentRegister']);
Route::post('student-register',[TeacherRegister::class, 'studentCreate']);
//Route::get('/',[FrontendController::class, 'index']);
Route::get('page/{page_slug}',[FrontendController::class, 'viewPageData']);
Route::get('teacher/{teacher_slug}',[FrontendController::class, 'viewTeacherData']);
// Route::get('teacher-profile',[TeacherController::class, 'teacherEdit']);
// Route::put('teacher-update',[TeacherController::class, 'teacherUpdate']);
Route::get('/dashboard', 'HomeController@index')->name('dashboard');
Route::get('/profile/changepassword', 'HomeController@changePasswordForm')->name('profile.change.password');
Route::post('/profile/changepassword', 'HomeController@changePassword')->name('profile.changepassword');
Route::get('page/contact',[ContactController::class, 'index']);
Route::get('add-contact',[ContactController::class, 'create']);
Route::post('add-contact',[ContactController::class, 'store']);

Route::group(['middleware' => ['auth','role:Admin']], function () 
{
    Route::get('/profile', 'HomeController@profile')->name('profile');
    Route::get('/profile/edit', 'HomeController@profileEdit')->name('profile.edit');
    Route::put('/profile/update', 'HomeController@profileUpdate')->name('profile.update');

    Route::get('/roles-permissions', 'RolePermissionController@roles')->name('roles-permissions');
    Route::get('/role-create', 'RolePermissionController@createRole')->name('role.create');
    //Route::get('/slide-create', 'SlideshowController@createSlider')->name('slide-create');
    Route::post('/role-store', 'RolePermissionController@storeRole')->name('role.store');
    Route::get('/role-edit/{id}', 'RolePermissionController@editRole')->name('role.edit');
    Route::put('/role-update/{id}', 'RolePermissionController@updateRole')->name('role.update');

    Route::get('/permission-create', 'RolePermissionController@createPermission')->name('permission.create');
    Route::post('/permission-store', 'RolePermissionController@storePermission')->name('permission.store');
    Route::get('/permission-edit/{id}', 'RolePermissionController@editPermission')->name('permission.edit');
    Route::put('/permission-update/{id}', 'RolePermissionController@updatePermission')->name('permission.update');

    Route::get('assign-subject-to-class/{id}', 'GradeController@assignSubject')->name('class.assign.subject');
    Route::post('assign-subject-to-class/{id}', 'GradeController@storeAssignedSubject')->name('store.class.assign.subject');
    //Route::get('/slideshow/delete/{id}', 'SlideshowController@destroy')->name('slideshow.delete');
    Route::get('sliders',[SliderController::class, 'index']);
    Route::get('add-slider',[SliderController::class, 'create']);
    Route::post('add-slider',[SliderController::class, 'store']);
    Route::get('edit-slider/{id}',[SliderController::class, 'edit']);
    Route::put('update-slider/{id}',[SliderController::class, 'update']);
    Route::get('delete-slider/{id}',[SliderController::class, 'destroy']);

    Route::get('courses',[CourseController::class, 'index']);
    Route::get('add-course',[CourseController::class, 'create']);
    Route::post('add-course',[CourseController::class, 'store']);
    Route::get('edit-course/{id}',[CourseController::class, 'edit']);
    Route::put('update-course/{id}',[CourseController::class, 'update']);
    Route::get('delete-course/{id}',[CourseController::class, 'destroy']);

    Route::get('skills',[SkillController::class, 'index']);
    Route::get('add-skill',[SkillController::class, 'create']);
    Route::post('add-skill',[SkillController::class, 'store']);
    Route::get('edit-skill/{id}',[SkillController::class, 'edit']);
    Route::put('update-skill/{id}',[SkillController::class, 'update']);
    Route::get('delete-skill/{id}',[SkillController::class, 'destroy']);


    Route::get('pages',[PageController::class, 'index']);
    Route::get('add-page',[PageController::class, 'create']);
    Route::post('add-page',[PageController::class, 'store']);
    Route::get('edit-page/{id}',[PageController::class, 'edit']);
    Route::put('update-page/{id}',[PageController::class, 'update']);
    Route::delete('delete-page/{id}',[PageController::class, 'destroy']);

    Route::get('media',[MediaController::class, 'index']);
    Route::get('add-image',[MediaController::class, 'create']);
    Route::post('add-image',[MediaController::class, 'store']);
    Route::get('show-image/{id}',[MediaController::class, 'show']);
    Route::delete('delete-image/{id}',[MediaController::class, 'destroy']);

    Route::get('/settings',[GlobalSetting::class, 'index'])->name('settings.index');
    Route::post('/settings',[GlobalSetting::class, 'save'])->name('settings.save');


    Route::resource('assignrole', 'RoleAssign');
    Route::resource('classes', 'GradeController');
    Route::resource('subject', 'SubjectController');
    Route::resource('teacher', 'TeacherController');
    Route::resource('parents', 'ParentsController');
    Route::resource('student', 'StudentController');
    Route::get('attendance', 'AttendanceController@index')->name('attendance.index');

});

Route::group(['middleware' => ['auth','role:Teacher']], function () 
{
    Route::get('/profile/teacher', 'HomeController@teacherProfile')->name('tprofile');
    Route::get('/profile/teacher/edit', 'HomeController@teacherProfileEdit')->name('teacherprofile.edit');
    Route::put('/profile/teacher', 'HomeController@teacherProfileUpdate')->name('teacherprofile.update');
    Route::post('attendance', 'AttendanceController@store')->name('teacher.attendance.store');
    Route::get('attendance-create/{classid}', 'AttendanceController@createByTeacher')->name('teacher.attendance.create');
});

Route::group(['middleware' => ['auth','role:Parent']], function () 
{
    Route::get('attendance/{attendance}', 'AttendanceController@show')->name('attendance.show');
});

Route::group(['middleware' => ['auth','role:Student']], function () {
    Route::get('/profile/student', 'HomeController@studentProfile')->name('sprofile');
    Route::get('/profile/student/edit', 'HomeController@studentProfileEdit')->name('studentprofile.edit');
    Route::put('/profile/student', 'HomeController@studentProfileUpdate')->name('studentprofile.update');
});
