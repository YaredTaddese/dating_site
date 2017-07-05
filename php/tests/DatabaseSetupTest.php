<?php
/*********************************************************************
 * Sort of Basic Testing                                              *
 *********************************************************************/
require_once "../util/connection.php";

class DatabaseSetupTest extends PHPUnit\Framework\TestCase
{

    /*********************************************************************
     * Database Setup Testing                                              *
     *********************************************************************/
    public function testDatabaseSetup(){
        $db = getDatabase();
        $this->assertNotFalse($db);
    }

    
}

?>

