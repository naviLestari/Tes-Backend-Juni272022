@extends('mcustomer.layout')
@section('content')
<div class="card">
  <div class="card-header">Show Page</div>
  <div class="card-body">
  
        <div class="card-body">
        <h5 class="card-title">Nama : {{ $mcustomer2->nama }}</h5>
        <p class="card-text">Alamat : {{ $mcustomer2->alamat }}</p>
        <p class="card-text">Tanggal Lahir : {{ $mcustomer2->tanggal_lahir }}</p>
  </div>
      
    </hr>
  
  </div>
</div>