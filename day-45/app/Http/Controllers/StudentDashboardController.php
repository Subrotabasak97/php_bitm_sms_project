<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use Illuminate\Http\Request;
use App\Models\Enroll;
use Illuminate\Support\Facades\Session;

class StudentDashboardController extends Controller
{
    private $enrolls;

    public function index()
    {
        $this->enrolls =  Enroll::where('student_id',Session::get('student_id'))->get();
        return view('student.home.home',['enrolls'=>$this->enrolls]);
    }
}
