<?php
function check()
{
	$ci = get_instance();
	// var_dump($_SESSION);
	// die;

	if (!$ci->session->userdata('username')) {
		// header('Clear-Site-Data: "cache", "cookies"');
		redirect('home');
	}
}
function get_client_ip()
{
	$ipaddress = '';
	if (getenv('HTTP_CLIENT_IP'))
		$ipaddress = getenv('HTTP_CLIENT_IP');
	else if (getenv('HTTP_X_FORWARDED_FOR'))
		$ipaddress = getenv('HTTP_X_FORWARDED_FOR');
	else if (getenv('HTTP_X_FORWARDED'))
		$ipaddress = getenv('HTTP_X_FORWARDED');
	else if (getenv('HTTP_FORWARDED_FOR'))
		$ipaddress = getenv('HTTP_FORWARDED_FOR');
	else if (getenv('HTTP_FORWARDED'))
		$ipaddress = getenv('HTTP_FORWARDED');
	else if (getenv('REMOTE_ADDR'))
		$ipaddress = getenv('REMOTE_ADDR');
	else
		$ipaddress = 'UNKNOWN';
	return $ipaddress;
}

function memory()
{
	ini_set('memory_limit', '???');
}



// cek akses app
function check_access($user_id, $izin_id)
{

	$ci = get_instance();
	$result = $ci->db->get_where('auth_access_izin', [
		'id_user' => $user_id,
		'id_izin' => $izin_id
	]);

	if ($result->num_rows() > 0) {

		return "checked='checked'";
	}
}
// check blacklist paket analisis basket
function check_blbasket($paket, $kuota, $basket, $operator)
{

	$ci = get_instance();
	$result = $ci->db->get_where('auth_bl_analisisbasket', [
		'paket' => $paket,
		'basket' => $basket,
		'kuota' => $kuota,
		'operator' => $operator
	]);

	if ($result->num_rows() > 0) {

		return "checked='checked'";
	}
}
// check blacklist paket analisis operator
function check_bloperator($produk, $paket, $kuota, $harga, $operator)
{

	$ci = get_instance();
	$result = $ci->db->get_where('auth_bl_analisisoperator', [
		'produk' => $produk,
		'paket' => $paket,
		'harga' => $harga,
		'kuota' => $kuota,
		'operator' => $operator
	]);

	if ($result->num_rows() > 0) {
		return "checked='checked'";
	}
}

function check_access_report($id_report, $id_izin)
{

	$ci = get_instance();
	$result = $ci->db->get_where('auth_access_report', [
		'id_report' => $id_report,
		'id_izin' => $id_izin
	]);
	if ($result->num_rows() > 0) {

		return "checked='checked'";
	}
}

function check_report($user_id, $report_id)
{
	$ci = get_instance();
	$result = $ci->db->get_where('auth_access_report', [
		'id_user' => $user_id,
		'id_report' => $report_id
	]);
	var_dump($result->num_rows());

	if ($result->num_rows() > 0) {
		return "checked='checked'";
	} else {
		return "noncheck";
	}
}

function check_adm()
{

	$ci = get_instance();
	$role_id = $ci->session->userdata('role_id');
	// var_dump($role_id);
	// die;
	if ($role_id == 3) {
		redirect('auth');
	}
}


function hitung_umur($tanggal_lahir)
{
	$ci = get_instance();
	$birthDate = new DateTime($tanggal_lahir);

	$today = new DateTime("today");
	// var_dump($birthDate);
	if ($birthDate >= $today) {
		return "0 tahun";
		exit();
	}
	$y = $today->diff($birthDate)->y;
	$m = $today->diff($birthDate)->m;
	$d = $today->diff($birthDate)->d;
	// return $y . " tahun " . $m . " bulan " . $d . " hari";
	return $y . " tahun ";
}
