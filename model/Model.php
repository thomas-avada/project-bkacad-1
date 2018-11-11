<?php
namespace App\Model;

use App\Helper\Inflect;

abstract class Model {
    /* Table name of the model */

    protected $tablename;

    /* Primary key */

    protected $primary = 'id';

    /* Select instance for the builder */

    protected $tableBuilder;

    public function __construct()
    {
        $this->tablename = $this->getTableNameFromModel();
//        $this->tableBuilder =
    }

    public function getTableNameFromModel()
    {
        return Inflect::pluralize(
            basename($_SERVER['PHP_SELF'],".php")
        );
    }
}