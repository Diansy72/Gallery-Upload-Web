<?php

include('autoloader.php');

if($_GET['action'] == 'delete' && $_GET['id']) {

	$delete = $photoGallery->delete($_GET['id']);
    
    // Jika berhasil, redirect ke halaman tertentu
    if ($delete) {
        header("Location: index.php"); // Ganti dengan halaman tujuan
        exit; // Jangan lupa untuk exit setelah header untuk menghentikan eksekusi kode lebih lanjut
    } else {
        // Jika gagal, bisa mengarahkan ke halaman error atau halaman sebelumnya
        header("Location: index.php?error=yaaa"); // Ganti dengan halaman error
        exit;
    }
}

if($_GET['action'] == 'upload') {

	$upload = $photoGallery->upload($_FILES['photo'], $_POST['desc'], $_POST['category']);

	echo $upload;
}
if($_GET['action'] == 'gallery') {
	$data = $photoGallery->singlePhoto($_POST['id']);

	echo json_encode($data);
}
// if($_GET['action'] == 'category') {
// 	$data = $photoGallery->category($_POST['id']);

// 	echo json_encode($data);
// }
if($_GET['action'] == 'title') {
	$data = $photoGallery->updateTitle($_POST['id'], $_POST['value']);

	echo $data;
}
if($_GET['action'] == 'desc') {
	$data = $photoGallery->updateDesc($_POST['id'], $_POST['value']);

	echo $data;
}

if($_GET['action'] == 'tag') {
	$data = $photoGallery->addTag($_POST['id'], $_POST['value']);

	echo $data;
}
if($_GET['action'] == 'next') {
	$data = $photoGallery->nextSlide($_POST['id']);

	echo json_encode($data);
}
if($_GET['action'] == 'prev') {
	$data = $photoGallery->prevSlide($_POST['id']);

	echo json_encode($data);
}

if($_GET['action'] == 'description') {
	$data = $photoGallery->description($_POST['id']);

	echo json_encode($data);
}
if ($_GET['action'] == 'filterByCategory') {
    $categoryId = $_POST['category_id'];
    $photos = $photoGallery->filterByCategory($categoryId);
    echo json_encode($photos);
    exit;
}