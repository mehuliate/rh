@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>PENDAFTARAN DOKUMEN</h3></div>

                <div class="panel-body">
                    <form method="POST" action="{{ url('/dokumen-rh-store') }}">
                    {{ csrf_field() }}
                    <table>
                        <tr>
                            <td>IMPORTIR</td>
                        </tr>
                        <tr>
                            <td>Nama</td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td>NPWP</td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td>Alamat</td>
                            <td><textarea name="" id="" cols="19" rows="3"></textarea></td>
                        </tr>
                        <tr>
                            <td>PEMBERITAHU /PPJK</td>
                        </tr>
                        <tr>
                            <td>Nama</td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td>NPWP</td>
                            <td><input type="text"></td>
                        </tr>
                        <tr>
                            <td>Alamat</td>
                            <td><textarea name="" id="" cols="19" rows="3"></textarea></td>
                        </tr>
                    </table>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection