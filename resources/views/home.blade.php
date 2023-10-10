@extends('adminlte::page')

@section('title', 'DSDABM')

@section('content_header')
<div class="row">
    <div class="col-12">
        <h5>
            <small class="text-muted">Kota:Bandung</small> <span class="navy" id='kota'></span>&emsp;
            <small class="text-muted">Propinsi:Jawa Barat</small> <span id="propinsi"></span>&emsp;
            <small class="text-muted">Kordinat:3PVF+PH</small> <span id="kor"></span>&emsp;
            <small class="text-muted"id="liveTimee"id="liveTime">Waktu Update:</small> <span id="time"></span>
        </h5>
    </div>
    <div class="col-md-3 col-sm-6 col-12">
        <div class="info-box">
        <span class="info-box-icon bg-olive"><i class="fas fa-cloud-meatball"></i></span>
        <div class="info-box-content" id="hu"><h2>40%</h2></div>
        <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <div class="col-md-3 col-sm-6 col-12">
        <div class="info-box">
        <span class="info-box-icon bg-danger"><i class="fas fa-temperature-high"></i></span>
        <div class="info-box-content" id="t"><h2>30°C</h2></div>
        <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <div class="col-md-3 col-sm-6 col-12">
        <div class="info-box">
        <span class="info-box-icon bg-success"><i class="fas fa-cloud-sun"></i></span>
        <div class="info-box-content" id="weather"><h2>Berawan</h2></div>
        <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <div class="col-md-3 col-sm-6 col-12">
        <div class="info-box">
        <span class="info-box-icon bg-primary"><i class="fas fa-wind"></i></span>
        <div class="info-box-content" id="ws"><h2>10km/jam</div>
        <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>

</div>
{{-- <h1 class="animate__animated animate__flash animate__infinite">An animated element</h1> --}}

@stop

@section('plugins.Chartjs', true)
@section('plugins.Datatables', true)

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                        <canvas id="myChart" width="400" height="100"></canvas>
                </div>
            </div>
        </div>
        <div class="col-4">

                <div class="info-box bg-gradient-success">

                    <span class="info-box-icon">
                        <i class="far fa-bell fa-2x"></i>
                    </span>

                    <div class="info-box-content">
                        <span class="info-box-text">Alaram Sensor 1</span>
                        <span class="info-box-text">Posisi Sensor Sungai Ciloa Wetland</span>

                        <div class="progress">
                        <div class="progress-bar" style="width: 100%"></div>
                        </div>
                        <span class="progress-description">
                        Waktu Update: 29-9-2023 23:00:00
                        </span>
                    </div>
                <!-- /.info-box-content -->
                </div>


            {{-- @dump($alat); --}}
        </div>
        <div class="col-8">
            <h5>Last Value Table</h5>
                <table id="example" class="display table table-bordered table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>Name Sensor</th>
                        <th>Position</th>
                        <th>Date Live</th>
                        <th>Last Value</th>
                        <th>Status Power</th>
                        <th>Alarm</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($alat as $item)
                        <tr>
                            <td>Sensor Banjir</td>
                            <td>Sungai Ciloa Wetland</td>
                            <td id="liveTime">2023-09-30 23:55:00</td>
                            <td>10</td>
                            <td>{{($item->status == 1)?'ON':'OFF'}}</td>
                            <td>
                                <a class="btn {{($item->alaram->status == 0)?'btn-success':'btn-danger'}}" href="/power-alaram/{{$item->id}}">
                                    <i class="fas fa-power-off"></i>
                                </a>
                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    {{-- @dump($alat) --}}
@stop

@push('js')
    <script src="{{ url('vendor/gauge/gauge.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/luxon@1.27.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-luxon@1.0.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-streaming@2.0.0"></script>
    <script src="{{ url('myapp/localForge.js') }}" ></script>
    <script src="{{ url('myapp/home.js') }}" ></script>

    <script>
        // let target = document.getElementById('foo'); // your canvas element
        // let gauge = new Gauge(target).setOptions(apps.gaugeOptions()); // create sexy gauge!
        //     gauge.maxValue = 100; // set max gauge value;
        //     gauge.set(50); // set actual value
    </script>

    <script>
        function updateLiveTime() {
            const liveTimeElement = document.getElementById('liveTime');
            const currentTime = new Date();
            liveTimeElement.textContent = currentTime.toLocaleString();
        }

        // Perbarui waktu setiap detik
        setInterval(updateLiveTime, 1000);

        // Panggil fungsi pertama kali untuk menginisialisasi waktu awal
        updateLiveTime();
        // console.log('localforage is: ', localforage);
        /* Realtime line chart ChartJS */
          function updateLiveTimee() {
            const liveTimeeElement = document.getElementById('liveTimee');
            const currentTime = new Date();
            liveTimeeElement.textContent = currentTime.toLocaleString();
        }

        // Perbarui waktu setiap detik
        setInterval(updateLiveTimee, 1000);

        // Panggil fungsi pertama kali untuk menginisialisasi waktu awal
        updateLiveTimee();
        // let target = document.getElementById('foo'); // your canvas element
        // let gauge = new Gauge(target).setOptions(apps.gaugeOptions()); // create sexy gauge!
        //     gauge.maxValue = 100; // set max gauge value;
        //     gauge.set(50); // set actual value


        const jmlAlat = "{{count($alat)}}";
        $(document).ready(function() {
            setInterval(function(){
                // get data BGKG
                apps.ajaxPerDay.run('/api/get-data-bmkg', function(data){
                    console.log(data);
                });

                localforage.getItem('data_bmg').then(function(value) {
                    // This code runs once the value has been loaded
                    // from the offline store.
                    const dataBmg = value[0];
                    // console.log(dataBmg);
                    $('#kota').html(dataBmg.kota);
                    $('#propinsi').html(dataBmg.propinsi);
                    $('#kor').html(dataBmg.cor);
                    $('#time').html(dataBmg.waktu);

                    $('#hu').html(`
                        <span class="info-box-text">${dataBmg.cuaca[0].desc}</span>
                        <span class="info-box-number">${dataBmg.cuaca[0].value[0]}</span>
                    `)
                    $('#t').html(`
                        <span class="info-box-text">${dataBmg.cuaca[5].desc}</span>
                        <span class="info-box-number">${dataBmg.cuaca[5].value[0]}, ${dataBmg.cuaca[5].value[1]}</span>
                    `)
                    $('#weather').html(`
                        <span class="info-box-text">${dataBmg.cuaca[6].desc}</span>
                        <span class="info-box-number">${dataBmg.cuaca[6].value[0]}</span>
                    `)
                    $('#ws').html(`
                        <span class="info-box-text">${dataBmg.cuaca[8].desc}</span>
                        <span class="info-box-number">${dataBmg.cuaca[8].value[1]}</span>
                    `)

                }).catch(function(err) {
                    // This code runs if there were any errors
                    console.log(err);
                });
            },3000);

            apps.chartLevelAir(jmlAlat);
            apps.dataTable($('#example'));
        });
    </script>

@endpush
@push('css')
<style>

</style>
@endpush
