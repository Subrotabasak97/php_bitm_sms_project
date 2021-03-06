<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Subject;
use Illuminate\Http\Request;
use App\Models\Enroll;
use Illuminate\Support\Facades\Session;

class StudentDashboardController extends Controller
{
    private $enrolls;
    private $student;
    private $id;

    public function index()
    {
        $this->enrolls =  Enroll::where('student_id',Session::get('student_id'))->get();
        return view('student.home.home',['enrolls'=>$this->enrolls]);
    }

    public function profile()
    {
        $this->student = Student::find(Session::get('student_id'));
        return view('student.profile.profile',['student'=>$this->student]);
    }

    public function updateProfile(Request $request,$id)
    {
        Student::updateStudentProfile($request,$id);
        return redirect()->back()->with('message','Your profile info updated Successfully');
    }


}
