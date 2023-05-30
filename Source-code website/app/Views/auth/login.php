<?= $this->extend('auth/auth/_layout') ?>
<?= $this->section('content') ?>
<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
      <form action="<?= base_url('AuthController/login') ?>" method="post">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name="input" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="password" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="/forgot-password">Forgot Password?</a>
				</div>
        </form>
			</div>

			<div class="sign-up-htm">
      <form action="<?= base_url('AuthController/register') ?>" method="post">
      <div class="group">
					<label for="fullname"  class="label">Fullname</label>
					<input id="fullname" name="fullname" type="text" class="input">
				</div>
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name="username" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="password" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" name="confpassword" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="email" class="label">Email Address</label>
					<input id="email"  name="email"  type="text" class="input">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
        </form>
			</div>
		</div>
	</div>
</div>

<?php if (session()->getFlashdata('msg')) : ?>
  <?= session()->getFlashdata('msg') ?>
<?php endif; ?>
<?= $this->endSection() ?>

<?= $this->section('script') ?>
<script>
  $(function() {
    toastr.options.timeOut = 0;
    toastr.options.extendedTimeOut = 0;
    toastr.options.onclick = null;
    var error = $('.errors').html();
    if (error) {
      toastr.error(error)
      $('.errors').hide();
      $('a.resend').click(function() {

      })
    }
    var success = $('.success').html();
    if (success) {
      toastr.success(success);
      $('.success').hide();
    }
  });
</script>
<?= $this->endSection() ?>