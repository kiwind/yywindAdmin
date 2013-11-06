<?php
	class Index extends CI_Controller
	{
		function __construct()
		{
			parent::__construct();
		}
		
		function Index()
		{
			$this->load->model('mindex');
			$banner = $this->mindex->getBanner();
			$product = $this->mindex->getProduct();
			$news = $this->mindex->getNews();
			$data=array('pageTitle'=>'',
						'menuIdx'=>1,
						'hornorTid'=>0,
						'productTid'=>0,
						'banner'=>$banner,
						'product'=>$product,
						'news'=>$news);
			$this->load->view('index.html',$data);
		}
	}
/* End of file */