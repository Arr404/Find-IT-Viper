<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <!-- <div class="d-sm-flex align-items-center justify-content-between mb-4 card-body ">
        <h1 class="h2 mb-0 text-gray-800 "><b>DASHBOARD</b></h1>
    </div> -->

    <!-- =================================================== TAMBAHAN CHART ========================================= -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h3 class="card-title">Konsentrasi</h6>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body">
                <form class="form-inline">
                        <!--tahun-->
                        <div class="form-group mb-2">
                            <!-- <label class="ml-3">tahun : </label> -->
                            <select name="tahun" class="form-control ml-2" id="tahun">
                                <option disabled selected>--Pilih Tahun--</option>
                                <?php $tahun = date('Y');
                                for ($i = 2020; $i < $tahun + 1; $i++) { ?>
                                    <option value="<?php echo $i ?>"><?php echo $i ?></option>
                                <?php } ?>
                            </select>
                            
                            <select name="bulan_konsentrasi" class="form-control ml-2" id="bulan_konsentrasi">
                                <option disabled selected>--Pilih Bulan--</option>
                                <?php
                                $month= ["January","February","March","April","May","June","July",
                                "August","September","October","November","December"];
                                for ($i = 0; $i < 12; $i++) { ?>
                                    <option value="<?php echo $i+1 ?>"><?php echo $month[$i] ?></option>
                                <?php } ?>
                            </select>
                        </div>

                        <button id="btn_tampil" type="button" class="btn btn-primary mb-2 ml-4"><i class="fas fa-eye"></i> Tampilkan Data</button>
                    </form>
                    <div class="card-body">
                        <div class="chart-container" style="position: relative; height:40vh;">
                            <canvas id="barChartNox"></canvas>
                        </div>
                    </div>
                </div>
            </div>
    <!-- =================================================== TAMBAHAN CHART ========================================= -->

    <!---------------------------------------->
    <!-- End of Main Content -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- ============ CHART ============ -->
    <!-- <script type="text/javascript">
        const backgroundColor = [
            'rgba(255, 99, 132, 0.5)',
            'rgba(54, 162, 235, 0.5)',
            'rgba(255, 206, 86, 0.5)',
            'rgba(75, 192, 192, 0.5)',
            'rgba(153, 102, 255, 0.5)',
            'rgba(255, 159, 64, 0.5)',
            'rgba(34, 197, 94,0.5)',
            'rgba(239, 68, 68, 0.5)',
            'rgb(169, 169, 169)'
        ];
        const borderColor = [
            'rgba(255, 99, 132, 1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)',
            'rgba(34, 197, 94,1)',
            'rgba(239, 68, 68, 0.8)',
            'rgb(169, 169, 169)'
        ];
    </script> -->

    <script type="text/javascript">
        const data_bar_nox = {
            labels:'Data Nox',
            datasets: [{
                label: '',
                data: [],
                backgroundColor:[]
            }]
        };
        const configBarNox = {
            type: 'line',
            data: data_bar_nox,
            options: {
                animation: false,
                maintainAspectRatio: false,
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: ''
                    }
                },
            }
        };

        var barChartNox = new Chart(
            document.getElementById('barChartNox'),
            configBarNox
        );
        $(document).ready(function() {
            selesai();
        });
 
        function selesai() {
            setTimeout(function() {
                const d = new Date();
                let year = $('#tahun').val();
                let month = $('#bulan_konsentrasi').val();
                let week = $('#minggu_konsentrasi').val();
                if(year == null){
                    year = d.getFullYear();;
                }
                
                var tahun = year;
                $.ajax({
                    url: "<?php echo base_url(); ?>/Home/get_data_konsentrasi",
                    method: "POST",
                    data: {
                        tahun,
                        month,
                        week
                    },
                    dataType: "JSON",
                    success: function(result, textStatus, jqXHR) {
                        update_barChartNox_realisasi(barChartNox, tahun, result);
                        
                    }
                })
                selesai();
            }, 2000);
        }
        
        
        function update_barChartNox_realisasi(chart, tahun, data) {
            console.log(data)
            data = arr.slice(Math.max(data.length - 5, 1))
            let times = []
            data.forEach(item=>{
                times.push(item.time);
            })
            let NoxKonsentrasi = []
            data.forEach(item=>{
                NoxKonsentrasi.push(item.Nox_Konsentrasi);
            })
            let MoxKonsentrasi = []
            data.forEach(item=>{
                MoxKonsentrasi.push(item.Mox_konsentrasi);
            })
            let CoxKonsentrasi = []
            data.forEach(item=>{
                CoxKonsentrasi.push(item.Cox_Konsentrasi);
            })
            const data_bar = {
                labels: times,
                datasets: [{
                    data: NoxKonsentrasi,   
                    label: "Nox",
                    backgroundColor: backgroundColor,
                    borderColor: borderColor,
                },
                {
                    data: MoxKonsentrasi,   
                    label: "Mox",
                    backgroundColor: backgroundColor,
                    borderColor: borderColor,
                },
                {
                    data: CoxKonsentrasi,   
                    label: "Cox",
                    backgroundColor: backgroundColor,
                    borderColor: borderColor,
                }]
            }
            chart.data = data_bar;
            chart.options.plugins.title.text = `${tahun}`;
            chart.update();
        }

    </script>