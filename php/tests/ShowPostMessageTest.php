<?php

require_once "../controller/MessageHandler.php";
require_once "../model/ProfileInfo.php";
require_once "../model/Profile.php";

class ShowPostMessageTest extends PHPUnit\Framework\TestCase
{
    public static $nominees;

    public function setUp()
    {    
        $this->mh = new MessageHandler();
    }

    /*********************************************************************
     * Functional Testing                                                *
     *********************************************************************/
    /**
     * @dataProvider showPostedMessagesProvider
     */
    public function testPostedMessagesContent($expected, $email, $more, $index, $length){
        $messages = $this->mh->getPostMessages($email, $more, $index, $length);
        $this->assertEquals($expected, $messages);
    }

    /*************************************************************************************
     * Data Providers for Functional Testing                                             *
     *************************************************************************************/
    public function showPostedMessagesProvider(){
        return [
            "gets single posted message" => [
                [
                    new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        ""
                    )
                ], "getch@gmail.com", false, 0, 6
            ],
            "gets no posted message" => [
                 null
                , "samrawit@gmail.com", false, 0, 6
            ],
            "gets multiple posted message" => [
                [
                    new PostMessage(
                        "getch@gmail.com", 
                        "something",
                        "../../images/05482a8e0ee05d43809a7a1ccb3870b8.jpg",
                        1494002751,
                        "",
                        ""
                    ),
                    new PostMessage(
                        "yad.tad.yt@gmail.com", 
                        "",
                        "../../images/c0024f173a481c66b70f1c5616842917.jpg",
                        1467704578,
                        "",
                        ""
                    ),
                    new PostMessage(
                        "yad.tad.yt@gmail.com", 
                        "",
                        "../../images/c2b172ba7a23cfc008c86c1396eb2ac6.jpg",
                        1467192085,
                        "",
                        ""
                    ),
                    new PostMessage(
                        "yad.tad.yt@gmail.com", 
                        "Learning is awesome.",
                        "../../images/80b296e06e495f5bfe7eff46b1250953.jpg",
                        1466671168,
                        "",
                        ""
                    )
                ]
                , "meli@gmail.com", false, 0, 6
            ]
        ];
    }       

}

?>

