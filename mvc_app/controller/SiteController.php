<?php

class SiteController extends Controller{

    function checkAdmin(){
        $db = Database::getConnection();
        $res = $db->query("select * from admin");
        $admin= [];
        while($adm = $res->fetch(PDO::FETCH_OBJ)){
            $admin[] = $adm;
        }
        //print_r($admin);
        return $admin;
    }
    function checkPoruke(){
        $db = Database::getConnection();
        $res = $db->query("select * from poruke");
        $poruke= [];
        while($por = $res->fetch(PDO::FETCH_OBJ)){
            $poruke[] = $por;
        }
        //print_r($poruke);
        return $poruke;
    }
    
    
    function getKategorije(){
        $db = Database::getConnection();
        //print_r($db);
        $res = $db->query("select * from kategorije");
        $kateg = [];
        while($kat = $res->fetch(PDO::FETCH_OBJ)){
            $kateg[] = $kat;
        }
        return $kateg;
    }

    function getSmestaj(){
        $db = Database::getConnection();
        $res = $db->query("select * from smestaj");
        $smestaj = [];
        while($smes = $res->fetch(PDO::FETCH_OBJ)){
            $smestaj[] = $smes;
        }
        return $smestaj;
    }
    function getRestorani(){
        $db = Database::getConnection();
        $res = $db->query("select * from restoran");
        $restorani = [];
        while($restor = $res->fetch(PDO::FETCH_OBJ)){
            $restorani[] = $restor;
        }
        return $restorani;
    }
    function getZnamenitosti(){
        $db = Database::getConnection();
        $res = $db->query("select * from znamenitost");
        $znamenitosti = [];
        while($znam = $res->fetch(PDO::FETCH_OBJ)){
            $znamenitosti[] = $znam;
        }
        return $znamenitosti;
    }

    function index(){
        $this->loadView("topview");
        $this->loadView("cityK");
        $this->loadView("footer");
    }
    function istorija(){
        $this->loadView("topview");
        $this->loadView("Istorija");
        $this->loadView("footer");
    }
    function turizam(){
        $this->loadView("topview");
        $this->loadView("Turizam");
        $this->loadView("footer");
    }
    function kudaIci(){
        $this->loadView("topview");
        $this->loadView("KudaIci",["kategorije"=>$this->getKategorije(),"smestaji"=>$this->getSmestaj(),"restoraniK"=>$this->getRestorani(),"znamenito"=>$this->getZnamenitosti()]);
        $this->loadView("footer");
    }
    function admin(){
        $this->loadView("topview");
        $this->loadView("admin");
        $this->loadView("footer");
    }
    function poruke(){
        $this->loadView("topview1");
        $this->loadView("poruke",["administratori"=>$this->checkAdmin(),"svePoruke"=>$this->checkPoruke()]);
        $this->loadView("footer");
    }
    function provera(){
        $this->loadView("topview");
        $this->loadView("provera",["administratori"=>$this->checkAdmin()]);
        $this->loadView("footer");
    }
    /*function provera1(){
        $this->loadView("topview1");
        $this->loadView("provera",["administratori"=>$this->checkAdmin()]);
        $this->loadView("footer");
    }*/

}