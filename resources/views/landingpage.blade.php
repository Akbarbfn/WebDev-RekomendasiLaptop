<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Aplikasi SPK Metode SAW</title>
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
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="{{ url('/hasilsaw') }}">Fitur Rekomendasi</a></li>
          <li><a class="getstarted scrollto" href="{{ url('/login') }}">Login</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center" style="min-height:655px" >

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1 style="font-size:2em;">KATALOG LAPTOP TERBARU 2023</h1>
          <h2>CUMAN DI WEBSITE INI YANG MEMBERIKAN INFORMASI LAPTOP</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
           
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="{{ asset('/Arsha/img/2.png') }}" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>
  </section>

<div class="container">
  <div class="row ">
      @foreach($barangs as $barang)
        <div class=" col-sm-8 col-md-4 col-lg-3 gy-4 my-4">
        <div class="card" style="width: 15rem; height:33rem;">
          <img src="{{ asset('fotolaptop/'.$barang->foto)}}" class="card-img-top" alt="image">
          <div class="card-body">
            <h5 class="card-title">{{ $barang->nama_alternatif }} </h5>
            <p class="card-text">{{ $barang->keterangan}} </p>
            <p class="card-text">RP. {{ $barang->harga}} </p>
          <!-- <a href="/detail/{{$barang->kode_alternatif}}/" class="btn btn-primary">Detail</a> -->
            <form action="/detail/{{$barang->kode_alternatif}}/" method="GET">
            @csrf
            <button class="btn btn-success btn-sm">Detail</button>
            </form>
          </div>
        </div>
        </div>
        @endforeach
  </div>
</div>

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="row">
          <div class="col-lg-12 text-center text-lg-start">
            <h3  class="text-center">Pengertian Laptop</h3>
            <p class="text-center">    </p>
		<h4  class="text-center text-warning"> 
		Laptop diartikan sebagai sebuah perangkat komputer yang berukuran kecil dan ringan dibandingkan dengan komputer. Laptop mempunyai fungsi yang sama dengan komputer, selain itu untuk melakukan pekerjaan yang ringan hingga berat tentu saja lebih mumpuni komputer dibandingkan dengan laptop <br/>
          </div>
          
        </div>

      </div>
    </section><!-- End Cta Section -->
 
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy;<strong><span><?= date("Y") ?></span></strong>
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