@extends('adminlte::page')

@section('title', 'DSADBM')

@section('content_header')

        <div class="col-12">
            <h5>Last Value Table</h5>
                <table id="example" class="display table table-bordered table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>no</th>
                        <th>Nama Sensor</th>
                        <th>Lokasi</th>
                        <th>Waktu</th>
                        <th>Ketinggian Air(cm)</th>
                        <th>warna</th>
                        <th>Status Power</th>
                        <th>Notofikasi</th>
                        <th>Alarm</th>
                    </tr>
                </thead>
                <tbody>

                    @foreach ($data as $item)
                        <tr>

                            <td>{{ ($data->currentPage() - 1) * $data->perPage() + $loop->index + 1 }}</td>

                            <td>{{$item->nama}}</td>
                            <td>{{$item->posisi}}</td>
                            <td>{{$item->waktu}}</td>
                            <td>{{$item->ketinggian}}</td>
                            <td>{{$item->warna}}</td>
                            <td>{{$item->status}}</td>
                            <td>{{$item->notifikasi}}</td>
                            <td>{{$item->alarm}}</td>

                        </tr>

                    @endforeach

                </tbody>
            </table>

            <p>Halaman {{ $data->currentPage() }} dari {{ $data->lastPage() }}</p>

            @if ($data->hasPages())
                <ul class="pagination">
                    {{-- Tombol "Halaman Sebelumnya" --}}
                    @if ($data->onFirstPage())
                        <li class="page-item disabled"><span class="page-link">Sebelumnya</span></li>
                    @else
                        <li class="page-item"><a class="page-link" href="{{ $data->previousPageUrl() }}" rel="prev">Sebelumnya</a></li>
                    @endif

                    {{-- Tombol "Halaman Berikutnya" --}}
                    @if ($data->hasMorePages())
                        <li class="page-item"><a class="page-link" href="{{ $data->nextPageUrl() }}" rel="next">Berikutnya</a></li>
                    @else
                        <li class="page-item disabled"><span class="page-link">Berikutnya</span></li>
                    @endif
                </ul>
            @endif

        </div>
    </div>
    {{-- @dump($alat) --}}
@stop

@push('js')
    <script src="{{ url('vendor/gauge/gauge.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/luxon@1.27.0"></script>

    <script src="{{ url('myapp/localForge.js') }}" ></script>
    <script src="{{ url('myapp/home.js') }}" ></script>

    <script>
        // let target = document.getElementById('foo'); // your canvas element
        // let gauge = new Gauge(target).setOptions(apps.gaugeOptions()); // create sexy gauge!
        //     gauge.maxValue = 100; // set max gauge value;
        //     gauge.set(50); // set actual value
    </script>

