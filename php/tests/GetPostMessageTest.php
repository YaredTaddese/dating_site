<?php

require_once "../controller/MessageHandler.php";
require_once "../model/ProfileInfo.php";
require_once "../model/Profile.php";

class GetPostMessageTest extends PHPUnit\Framework\TestCase
{
    public static $nominees;

    public function setUp()
    {
        $profileInfo = $this->createMock('ProfileInfo');
        $profile = $this->createMock('Profile');
        
        $profile->profileInfo = $profileInfo;
        $profileInfo->method('getNominees')
             ->willReturn(self::$nominees);
    
        $this->mh = new MessageHandler();
    }

    public function tearDown(){
        
    }
    

    /*********************************************************************
     * Control Flow Testing                                              *
     *********************************************************************/

    /**
     * @dataProvider currentPIndexProvider
     */
    public function testCurrentPIndexValue($expected, $nominees, $email, $more, $index, $length){
        self::$nominees = $nominees;
        $this->mh->getPostMessages($email, $more, $index, $length);
        $this->assertEquals($expected, $this->mh->currentPIndex);
    }

    /**
     * @dataProvider messagesProvider
     */
    public function testMessagesContent($expected, $nominees, $email, $more, $index, $length){
        self::$nominees = $nominees;
        $messages = $this->mh->getPostMessages($email, $more, $index, $length);
        $this->assertEquals($expected, $messages);
    }


    /*************************************************************************************
     * Data Providers for Control Flow Testing                                           *
     *************************************************************************************/
    public function currentPIndexProvider(){
        return [
            "unreasonable" => [6, array("meli@gmail.com"), "getch@gmail.com", false, 0, 6], 
            "another" => [0, array("wef yelem"), "getch@gmail.com", false, 0, 6]
        ];

    }

    public function messagesProvider(){
        return [
            "unreasonable" => [
                [
                    new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        "yad.tad.yt@gmail.com")
                ], array("meli@gmail.com"), "getch@gmail.com", false, 0, 6
            ],
            "other" => [
                [
                    new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        "yad.tad.yt@gmail.com"
                    )
                ]
                , array("meli@gmail.com"), "getch@gmail.com", false, 0, 6
            ]
        ];
    }       

    /*************************************************************************************
     * Domain Testing                                                                    *
     *************************************************************************************/
     /**
      * @dataProvider notNegativeProvider 
      */
     public function testCurrentPIndexIsNotNegative($expected, $nominees, $email, $more, $index, $length){
        self::$nominees = $nominees;
        $messages = $this->mh->getPostMessages($email, $more, $index, $length);
        $this->assertGreaterThanorEqual($expected, $this->mh->currentPIndex);
     }

     /**
      * @dataProvider notGreaterThanLimitProvider
      */
     public function testCurrentPIndexIsNotGreaterThanLimit($nominees, $email, $more, $index, $length){
        self::$nominees = $nominees;
        $messages = $this->mh->getPostMessages($email, $more, $index, $length);
        $this->assertLessThanorEqual($index + $length, $this->mh->currentPIndex); 
     }

    /**
     * @dataProvider isValidProvider
     */
     public function testCurrentPIndexIsValid($nominees, $email, $more, $index, $length){
        self::$nominees = $nominees;
        $messages = $this->mh->getPostMessages($email, $more, $index, $length);
        $expecteds = [ 0, $index, $length, $index + $length ];
        $this->assertContains($this->mh->currentPIndex, $expecteds, 
                              "currentPIndex is set to an invalid value");
        
     }

     /**
      * @dataProvider onlyPostsProvider 
      */
     public function testMessagesContainsOnlyPosts($nominees, $email, $more, $index, $length){
        self::$nominees = $nominees;
        $messages = $this->mh->getPostMessages($email, $more, $index, $length);
        $this->assertContainsOnlyInstancesOf("PostMessage", $messages);
     }

    /*************************************************************************************
     * Data Providers for Domain Testing                                                 *
     *************************************************************************************/
     public function notNegativeProvider(){
        return [
            "unreasonable" => [6, array("meli@gmail.com"), "getch@gmail.com", false, 0, 6], 
            "another" => [0, array("wef yelem"), "getch@gmail.com", false, 0, 6]
        ];
     }

     public function notGreaterThanLimitProvider(){
        return [
            "unreasonable" => [ array("meli@gmail.com"), "getch@gmail.com", false, 0, 6], 
            "another" => [ array("wef yelem"), "getch@gmail.com", false, 0, 6]
        ];
     }

     public function isValidProvider(){
        return [
            "unreasonable" => [ array("meli@gmail.com"), "getch@gmail.com", false, 0, 6], 
            "another" => [ array("wef yelem"), "getch@gmail.com", false, 0, 6]
        ];
     }

     public function onlyPostsProvider(){
        return [
            "unreasonable" => [array("meli@gmail.com"), "getch@gmail.com", false, 0, 6], 
            "another" => [array("wef yelem"), "getch@gmail.com", false, 0, 6]
        ];
     }
}

?>

