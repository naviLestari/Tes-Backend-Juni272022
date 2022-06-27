<?php

namespace App\Http\Controllers;

use App\Models\Mcustomer;
use Illuminate\Http\Request;

class McustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $mcustomer = Mcustomer::all();
        return view('mcustomer.index')->with('mcustomer2', $mcustomer);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('mcustomer.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $input = $request->all();
        mcustomer::create($input);
        return redirect('mcustomer.show')->with('flash_message', 'Customer Added!');
    }
    /*public function store( Mcustomer $mcustomer)
    {
        //
        $input = $request->all();
        mcustomer::create($input);
        return redirect('mcustomer.show')->with('mcustomer', $mcustomer);
    }*/

    
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Mcustomer  $mcustomer
     * @return \Illuminate\Http\Response
     */
    /*public function show(Mcustomer $mcustomer)
    {
        //
        
    }*/
    public function show($id)
    {
        //
        $mcustomer = Mcustomer::find($id);
        return view('mcustomer.show')->with('mcustomer2', $mcustomer);
    }
    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Mcustomer  $mcustomer
     * @return \Illuminate\Http\Response
     */
    /*public function edit(Mcustomer $mcustomer)
    {
        //
    }
    */
    public function edit($id)
    {
        //
        $mcustomer = Mcustomer::find($id);
        return view('mcustomer.edit')->with('mcustomer2', $mcustomer);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Mcustomer  $mcustomer
     * @return \Illuminate\Http\Response
     */
    /*public function update(Request $request, Mcustomer $mcustomer)
    {
        //
    }*/

    public function update(Request $request, $id)
    {
        //
        $mcustomer = Mcustomer::find($id);
        $input = $request->all();
        $mcustomer->update($input);
        return redirect('mcustomer')->with('flash_message', 'Customer Updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Mcustomer  $mcustomer
     * @return \Illuminate\Http\Response
     */
    /*public function destroy(Mcustomer $mcustomer)
    {
        //
    }*/
    public function destroy($id)
    {
        //
        Mcustomer::destroy($id);
        return redirect('mcustomer')->with('flash_message', 'Customer deleted!');

    }
}
