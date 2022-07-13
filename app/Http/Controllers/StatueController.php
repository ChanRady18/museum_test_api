<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Museum;

class StatueController extends Controller
{
    //

    // Create data
    function createStatue(Request $request){
        $row = new Museum();
        $row->title = $request->title;
        $row->type = $request->type;
        $row->place = $request->place;
        $row->period = $request->period;
        $row->content = $request->content;
        $row->image = $request->image;
        $row->save();
        return $row;
    }
    
    // get all data
    function index(){
        $row = Museum::all();
        return $row;
    }

    // get one data
    function getStatue(Request $request){
        $museum_id = $request->museum_id;
        $row = Museum::find($museum_id);
        return $row;
    }

    //Update
    function updateStatue(Request $request){
        $museum_id = $request->museum_id;
        $row = Museum::find($museum_id);
        $row->title = $request->title;
        $row->type = $request->type;
        $row->place = $request->place;
        $row->period = $request->period;
        $row->content = $request->content;
        $row->image = $request->image;
        $row->save();
        return $row;
    }
    

    // delete
    function deleteStatue(Request $request){
        $museum_id = $request->museum_id;
        $row = Museum::find($museum_id);

        $row->delete();
        return"Delete Success";

    }


}
