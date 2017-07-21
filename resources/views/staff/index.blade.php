@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Staff Rash Handling</div>

                <div class="panel-body">
                    {{-- Selamat Datang {{ Auth::user()->name }} --}}
                    <br>
                    <div class="list-group">
                      <a href="/dokumen-rh-form" class="list-group-item">Daftar Dokumen</a>
                      <a href="/upload_daftar_dokumen" class="list-group-item">Upload Data</a>
                      <a href="#" class="list-group-item">Morbi leo risus</a>
                      <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                      <a href="#" class="list-group-item">Vestibulum at eros</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection