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
                    <div class="col-md-6">
                    <label for="">nama</label><input type="text">
                        <hr>
                        <h4>PENGIRIM</h4>
                        <div class="form-group">
                            <label for="hawb">NAMA</label>
                            <input type="text" class="form-control" name="nm_pengirim">
                        </div>
                        <div class="form-group">
                            <label for="hawb">ALAMAT</label>
                            <input type="text" class="form-control" name="almt_pengirim">
                        </div>
                        <div class="form-group">
                            <label for="hawb">KODE NEGARA</label>
                            <input type="text" class="form-control" name="kd_ngr_pengirim">
                        </div>
                        <hr>
                        <h4>PENJUAL</h4>
                        <div class="form-group">
                            <label for="hawb">NAMA</label>
                            <input type="text" class="form-control" name="nm_penjual">
                        </div>
                        <div class="form-group">
                            <label for="hawb">ALAMAT</label>
                            <input type="text" class="form-control" name="almt_penjual">
                        </div>
                        <div class="form-group">
                            <label for="hawb">KODE NEGARA</label>
                            <input type="text" class="form-control" name="kd_ngr_penjual">
                        </div>
                        <hr>
                        <h4>IMPORTIR</h4>
                        <div class="form-group">
                            <label for="hawb">NAMA</label>
                            <input type="text" class="form-control" name="nnm_importir">
                        </div>
                        <div class="form-group">
                            <label for="hawb">NPWP</label>
                            <input type="text" class="form-control" name="npwp_importir">
                        </div>
                        <div class="form-group">
                            <label for="hawb">ALAMAT</label>
                            <input type="text" class="form-control" name="almt_importir">
                        </div>
                        <hr>
                        <h4>PEMBERITAHU/PPJK</h4>
                        <div class="form-group">
                            <label for="hawb">NAMA</label>
                            <input type="text" class="form-control" name="nama_ppjk">
                        </div>
                        <div class="form-group">
                            <label for="hawb">NPWP</label>
                            <input type="text" class="form-control" name="npwp_ppjk">
                        </div>
                        <div class="form-group">
                            <label for="hawb">ALAMAT</label>
                            <input type="text" class="form-control" name="alamat_ppjk">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <hr>
                        <h4>PENGANGKUT</h4>
                        <div class="form-group">
                            <label for="hawb">NAMA PESAWAT UDARA</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group">
                            <label for="hawb">KODE FLIGHT</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group">
                            <label for="hawb">KODE NEGARA</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <hr>
                        <h4>PELABUHAN</h4>
                        <div class="form-group">
                            <label for="hawb">MUAT</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group">
                            <label for="hawb">KODE</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group">
                            <label for="hawb">TRANSIT</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group">
                            <label for="hawb">KODE</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group">
                            <label for="hawb">TUJUAN</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group">
                            <label for="hawb">KODE</label>
                            <input type="text" class="form-control" name="pesawat">
                        </div>
                        <div class="form-group{{ $errors->has('mawb') ? ' has-error' : '' }}">
                        <hr>
                            <label for="mawb">NOMOR MAWB</label>
                            <input type="text" class="form-control" name="mawb" value="{{ old('mawb') }}" autofocus="">
                            @if ($errors->has('mawb'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('mawb') }}</strong>
                                </span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label for="mawb">TGL MAWB</label>
                            <input type="text" class="form-control" name="tgl_mawb">
                        </div>
                        <div class="form-group">
                            <label for="hawb">NOMOR HAWB</label>
                            <input type="text" class="form-control" name="hawb">
                        </div>
                        <div class="form-group">
                            <label for="hawb">TGL HAWB</label>
                            <input type="text" class="form-control" name="tgl_hawb">
                        </div>
                        <div class="form-group">
                            <label for="hawb">JUMLAH</label>
                            <input type="text" class="form-control" name="jumlah">
                        </div>
                        <div class="form-group">
                            <label for="hawb">BRUTO</label>
                            <input type="text" class="form-control" name="bruto">
                        </div>
                        <div class="form-group">
                            <label for="hawb">NETTO</label>
                            <input type="text" class="form-control" name="netto">
                        </div>
                        <div class="form-group">
                            <label for="hawb">LOKASI GUDANG</label>
                            <select class="form-control" name="lokasi_gudang">
                                <option value=""></option>
                                <option value="JAS">JAS</option>
                                <option value="GARUDA">GARUDA</option>
                                <option value="GAPURA">GAPURA</option>
                                <option value="UNEX">UNEX</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="hawb">JENIS JAMINAN</label>
                           <select class="form-control" name="jenis_jaminan">
                                <option value=""></option>
                                <option value="JAS">TUNAI</option>
                                <option value="GARUDA">TERUS MENERUS</option>
                            </select>
                        </div>
                    </div>
                        
                        
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection