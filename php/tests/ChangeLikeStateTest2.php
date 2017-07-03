<?php

require_once "../controller/MessageHandler.php";

/*********************************************************************
 * Bottom Up Testing                                                 *
 *********************************************************************/
class ChangeLikeStateTest2 extends PHPUnit\Framework\TestCase
{
    public static $integrationUnits = 2;
    public static $likers;

    public function setUp()
    {   
        if(self::$integrationUnits == 3){
            $message = $this->getMockBuilder(PostMessage::class)
                            ;

            $message->method('getLikers')
                ->willReturn(self::$likers);

            if(self::$integrationUnits <= 2){
                $message->method('setLikers')
                   ->will($this->returnCallback("setLikers"));
            }
        }
                
        $this->mh = new MessageHandler();
        self::$integrationUnits += 1;
    }

    public function tearDown(){
        
    }    

    /*********************************************************************
     * Integrating MessageHandler::changeLikeState with lower level      *
     *             Message::changeLikeState                              *
     *********************************************************************/
    /**
     * @dataProvider top2Provider
     */
    public function testTop2Integration($expected, $post, $email){
        $state = $this->mh->changeLikeState($post, $email);
        $this->assertEquals($expected, $state);
    }

    /*************************************************************************************
     * Data Providers for the former 2 unit integrations                                 *
     *************************************************************************************/
    public function top2Provider(){
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
                , "heni@gmail.com"
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
                ,"heni@gmail.com"
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

