<?php
namespace app\index\model;
use think\Model;
class Agent extends Model{
    protected $autoWriteTimestamp=true;
    protected $pk='id';
    protected $table='qxhat_agent';
}