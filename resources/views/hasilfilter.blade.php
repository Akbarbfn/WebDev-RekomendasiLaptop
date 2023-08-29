<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>KANGLAPTOP.ID</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{ asset('/Arsha/img/favicon.png') }}" rel="icon">
  <link href="{{ asset('/Arsha/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- {{ asset('/AdminLTE/dist/css/adminlte.min.css') }}  -->
  <link href="{{ asset('/Arsha/vendor/aos/aos.css') }}" rel="stylesheet">
  <link href="{{ asset('/Arsha/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('/Arsha/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
  <link href="{{ asset('/Arsha/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
  <link href="{{ asset('/Arsha/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
  <link href="{{ asset('/Arsha/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
  <link href="{{ asset('/Arsha/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{ asset('/Arsha/css/style.css') }}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.9.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  
  <style>
  
  
.faq .faq-list a {
    display: inline;
    position: relative;
    font-family: "Poppins", sans-serif;
    font-size: 1em;
    line-height: 24px;
    font-weight: 500;
    padding: 0 0px;
    outline: none;
    cursor: pointer;
}

#hero {
    width: 100%;
    height: 0px !important;
    background: #37517e;
}

.card {
	margin-bottom:40px;
}

  </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="{{ url('/home') }}">Kanglaptop.id</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="{{ url('/home') }}">Home</a></li>
          <li><a class="nav-link scrollto active" href="{{ url('/hasilsaw') }}">Fitur Rekomendasi</a></li>
          <li><a class="getstarted scrollto" href="{{ url('/login') }}">Login</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
 
 
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center" style="height:35px @important;" >
 

  </section><!-- End Hero -->

  
  
  <main id="main">

 
    <!-- ======= About Us Section ======= -->
    <section id="hasilsaw" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Rekomendasi Laptop Terbaru</h2>
        </div>

        <div class="row content">
          <div class="col-lg-12">
		  
		
		
<form action="{{ route('home.filter') }}" method="post">
	<div class="card">
		<div class="card-body">
			<div class="row">
				
					{{show_error($errors)}}
					{{ csrf_field() }}
					  
 
					<?= get_pencarian_option($arrfilter); ?>
					   
					   <div class='col-md-1' style='margin:5px;'>
						<div class='form-group row'>
									<label> &nbsp;</label>
							<button class="btn btn-primary"><i class="fa fa-save"></i> Filter</button>  		
					 
					</div>
					</div>
				
			</div>
		</div>
		 
	</div>
</form>

    <h3 class="card-title">{{ $juduldata }}</h3>
    </div>
    <div class="card-body p-0">
        <div class="row">
            @php $dataExists = false; $count = 0; @endphp
            @foreach($saw->rank as $key => $val)
                <?php
                    $x = 0;
                    $arrhasil = array();
                    foreach ($kriteriaku as $kriteria) {
                        $kodealternatif = $alternatifs[$key]->kode_alternatif;
                        $kodekriteria = $kriteria->kode_kriteria;

                        $idcrisp = get_crisp_by_AK($kodealternatif, $kodekriteria);
                        $pencarian = $arrfilter[$x];

                        if ($pencarian == null) {
                            $hasil = "benar";
                        }

                        if ($pencarian != null && $idcrisp == $pencarian) {
                            $hasil = "benar";
                        } else if ($pencarian == null) {
                            $hasil = "benar";
                        } else {
                            $hasil = "salah";
                        }

                        array_push($arrhasil, $hasil);

                        $x++;
                    }

                    $jumlahsalah = 0;
                    for ($i = 0; $i < sizeof($arrhasil); $i++) {
                        if ($arrhasil[$i] == "salah") {
                            $jumlahsalah++;
                        }
                    }

                    if ($jumlahsalah == 0) {
                        $dataExists = true;
                ?>
                <div class="col-6 col-sm-6 col-md-4 col-lg-3 gy-4 my-4">
                    <div class="card">
                        <a href="#" onclick="showModal('{{ $alternatifs[$key]->nama_alternatif }}', '{{ $alternatifs[$key]->keterangan }}', '{{ asset('fotolaptop/'.$alternatifs[$key]->foto) }}', '{{ $alternatifs[$key]->harga }}')">
                            <img src="{{ asset('fotolaptop/'.$alternatifs[$key]->foto)}}" alt="" class="card-img-top" style="width: 100%;">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title" style="height: 60px; overflow: hidden;">{{ $alternatifs[$key]->nama_alternatif }}</h5>
                            <p class="card-text mb-0"><strong>RP. {{ $alternatifs[$key]->harga }}</strong></p>
                        </div>
                    </div>
                </div>
                <?php
                    $count++;
                    if ($count % 4 == 0) {
                        echo '</div><div class="row">';
                    }
                ?>
                <?php } ?>
            @endforeach

            @if (!$dataExists)
            <div class="col-md-12">
    <table class="table table-bordered text-center">
        <tr>
            <th colspan="3" style="font-size: 24px; font-weight: bold;">Laptop Tidak Tersedia</th>
        </tr>
    </table>
</div>
            @endif
        </div>
    </div>
</div>

<!-- Pop-up Modal -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <div id="modal-body">
            <!-- Data akan ditambahkan melalui JavaScript -->
        </div>
    </div>
</div>

<!-- CSS untuk mengatur tampilan modal -->
<style>
    /* CSS untuk pop-up modal */
    .modal {
        display: none;
        position: fixed;
        z-index: 9999;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: transparent;
        align-items: center;
        justify-content: center;
    }

    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        max-width: 60%;
        width: 600px; /* Atur lebar pop-up sesuai kebutuhan */
        border-radius: 5px;
        position: relative;
        color: #000;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .modal-content strong {
        font-weight: bold;
    }

    .modal-content .keterangan {
        margin-top: 10px;
    }

    .close {
        position: absolute;
        top: 10px;
        right: 10px;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
    }

    .close:hover {
        color: #555;
    }

    .keterangan {
        max-width: 100%;
        word-wrap: break-word;
    }

    /* Tambahkan gaya untuk tampilan responsif */
    @media screen and (max-width: 600px) {
        .modal-content {
            max-width: 90%;
            width: auto;
        }
    }
</style>
<!-- JavaScript untuk mengatur pop-up saat gambar diklik -->
<script>
    // Ambil elemen gambar
    var images = document.getElementsByTagName("img");

    // Ambil elemen modal
    var modal = document.getElementById("myModal");

    // Ambil elemen yang menutup modal
    var span = document.getElementsByClassName("close")[0];

    // Tampilkan modal dengan data yang diisi
    function showModal(namaLaptop, keterangan, foto, harga) {
        var modalBody = document.getElementById("modal-body");
        modalBody.innerHTML = "";

        var rowHTML = "<p><strong>" + namaLaptop + "</strong></p>";
        rowHTML += "<p class='keterangan'>" + keterangan + "</p>";
        rowHTML += "<p class='harga'><strong>RP. " + harga + "</strong></p>";
        rowHTML += "<img src='" + foto + "' alt='' style='max-width: 100%; height: auto;'>";
        modalBody.innerHTML = rowHTML;

        modal.style.display = "block";

        // Tambahkan listener ke event scroll
        window.addEventListener("scroll", function() {
            var top = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
            modal.style.top = top + "px";
        });
    }

    // Ketika pengguna mengklik ikon close, tutup modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // Ketika pengguna mengklik di luar modal, tutup modal
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>


     </section><!-- End About Us Section -->

</div>
         </div>
 
       </div>
     </section><!-- End About Us Section -->
   </main><!-- End #main -->
 
   <!-- ======= Footer ======= -->
   <footer id="footer">
     <div class="container footer-bottom clearfix">
       <div class="copyright">
         &copy; Copyright <strong><span><?= date("Y") ?></span></strong>
       </div>
       <div class="credits">
         <!-- All the links in the footer should remain intact. -->
         <!-- You can delete the links only if you purchased the pro version. -->
         <!-- Licensing information: https://bootstrapmade.com/license/ -->
         <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
         
       </div>
     </div>
   </footer><!-- End Footer -->
 
   <div id="preloader"></div>
   <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
 
   <!--  {{ asset('/AdminLTE/dist/css/adminlte.min.css') }}  -->
   
   <script src="{{ asset('/Arsha/vendor/aos/aos.js') }}"></script>
   <script src="{{ asset('/Arsha/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
   <script src="{{ asset('/Arsha/vendor/glightbox/js/glightbox.min.js') }}"></script>
   <script src="{{ asset('/Arsha/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
   <script src="{{ asset('/Arsha/vendor/swiper/swiper-bundle.min.js') }}"></script>
   <script src="{{ asset('/Arsha/vendor/waypoints/noframework.waypoints.js') }}"></script>
  
   <!-- Template Main JS File -->
   <script src="{{ asset('/Arsha/js/main.js') }}"></script>
 
 </body>
 
 </html>