<section>
  <h2>Inspired To See No Child Without</h2>
  <p class="black">Change a childs’ life today by donating or sponsoring any amount. Just a little can help transform their community and change their world. Help South Africa become a better place.</p>
</section>

<div class="container">
  <div class="steps center">
    <i id="step1" class="fa fa-circle" aria-hidden="true"></i>
      <div class="line"></div>
    <i id="step2" class="fa fa-circle-thin" aria-hidden="true"></i>
  </div>
</div>

<h3 class="form-heading">Donate and Help a Child</h3>

<!-- FORM GOES HERE -->

<section>
  <div class="button">
    <a style="display:none;" id="btnFormBack" class="secondary">Previous Step</a>
  </div>
  <div class="button">
    <a id="btnFormNext" class="secondary">Next Step</a>
  </div>
</section>

<script>
$( document ).ready(function() {
  $("#btnFormBack").click(function(){
      $("#AddDet").hide();
      $("#DonInfo").show();
      $(this).hide();
      $("#btnFormNext").show();
      $('#step2').removeClass("fa-circle")
      $('#step2').addClass("fa-circle-thin")
      $('#step1').removeClass("fa-circle-thin")
      $('#step1').addClass("fa-circle")
    });
  $("#btnFormNext").click(function(){
      $("#DonInfo").hide();
      $("#AddDet").show();
      $(this).hide();
      $("#btnFormBack").show();
      $('#step1').removeClass("fa-circle")
      $('#step1').addClass("fa-circle-thin")
      $('#step2').removeClass("fa-circle-thin")
      $('#step2').addClass("fa-circle")
    });
});
</script>