
@extends('mcustomer.layout')
@section('content')
<div class="card">
  <div class="card-header">ADD Customer (Page Create)</div>
  <div class="card-body">
      
      <form action="{{ url('mcustomer') }}" method="post">
        {!! csrf_field() !!}
        <label>Name</label></br>
        <input type="text" name="nama" id="nama" class="form-control"></br>
        <label>Alamat</label></br>
        <input type="text" name="alamat" id="alamat" class="form-control"></br>
        <label>Tanggal Lahir</label></br>        
        <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="form-control"></br>
        
        <input type="submit" value="Save" class="btn btn-success"></br>
    </form>
  
  </div>
</div>
@stop