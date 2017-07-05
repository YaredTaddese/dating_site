<?php
/**********************************************************************
 * Unit Test on loadPostedMessages method                              *
 *********************************************************************/
require_once "../controller/MessageHandler.php";

class LoadPostMessageTest extends PHPUnit\Framework\TestCase
{
    public static $nominees;

    public function setUp()
    {    
        $this->mh = new MessageHandler();
    }

    public function tearDown(){
        
    }
    

    /*********************************************************************
     * Control Flow Testing                                              *
     *********************************************************************/
    /**
     * @dataProvider postMessageProvider
     */
    public function testpostMessageContent($expected, $time, $sender){
        $message = $this->mh->loadPostMessage($time, $sender);
        $this->assertEquals($expected, $message);
    }


    /*************************************************************************************
     * Data Providers for Control Flow Testing                                           *
     *************************************************************************************/
    public function postMessageProvider(){
        return [
            "1" =>[
                new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        "yad.tad.yt@gmail.com"
                    )
                ,1466746516, "meli@gmail.com"
            ],
            "2" => [
                new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        "yad.tad.yt@gmail.com"
                    )
                ,1466746516, "meli@gmail.com"
            ]
        ];
    }       

    /*************************************************************************************
     * Domain Testing                                                                    *
     *************************************************************************************/
     /**
      * @dataProvider onlyPostMessageProvider 
      */
     public function testMessageisOnlyPost($time, $sender){
        $message = $this->mh->loadPostMessage($time, $sender);
        $this->assertInstanceOf(PostMessage::class, $message);
     }

    /*************************************************************************************
     * Data Providers for Domain Testing                                                 *
     *************************************************************************************/
     public function onlyPostMessageProvider(){
        return [
            "1" => [ 1466746516, "meli@gmail.com" ], 
            "2" => [ 1466746516, "meli@gmail.com" ]
        ];
     }

     /*************************************************************************************
     * Data Flow Testing                                                                  *
     *************************************************************************************/
     /**
      * @dataProvider notToBeInitializedProvider 
      */
     public function testMessageShouldNotBeInitialized($time, $sender){
        $message = $this->mh->loadPostMessage($time, $sender);
        $this->assertNull($message);
     }

     /**
      * @dataProvider shouldBeInitializedProvider 
      */
     public function testMessageShouldBeInitialized($time, $sender){
        $message = $this->mh->loadPostMessage($time, $sender);
        $this->assertNotNull($message);
     }

     /*************************************************************************************
     * Data Providers for Data Flow Testing                                               *
     *************************************************************************************/
     public function notToBeInitializedProvider(){
        return [
            "1" => [ 1466746516, "meli@gmail.com" ], 
            "2" => [ 1466746516, "meli@gmail.com" ], 
        ];
     }

     public function shouldBeInitializedProvider(){
        return [
            "1" => [ 1466746516, "meli@gmail.com" ],
            "2" => [ 1466746516, "meli@gmail.com" ],
        ];
     }

}

?>

