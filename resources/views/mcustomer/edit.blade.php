@extends('mcustomer.layout')
@section('content')
 
<div class="card">
  <div class="card-header">EDIT PAGE</div>
  <div class="card-body">
      
      <form action="{{ url('mcustomer/' .$mcustomer2->id) }}" method="post">
        {!! csrf_field() !!}
        @method("PATCH")
        <input type="hidden" name="id" id="id" value="{{$mcustomer2->id}}" id="id" />
        <label>Nama</label></br>
        <input type="text" name="nama" id="nama" value="{{$mcustomer2->nama}}" class="form-control"></br>
        <label>Alamat</label></br>
        <input type="text" name="alamat" id="alamat" value="{{$mcustomer2->alamat}}" class="form-control"></br>
        <label>Tanggal Lahir</label></br>
        <input type="date" name="tanggal_lahir" id="tanggal_lahir" value="{{$mcustomer2->tanggal_lahir}}" class="form-control"></br>
        <input type="submit" value="Update" class="btn btn-success"></br>
    </form>
   
  </div>
</div>
 
@stop