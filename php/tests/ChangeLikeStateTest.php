<?php

require_once "../controller/MessageHandler.php";

/*********************************************************************
 * Big Bang Testing                                                  *
 *********************************************************************/
class ChangeLikeStateTest extends PHPUnit\Framework\TestCase
{
    /*************************************************************************
     * Integrating MessageHandler::changeLikeState, Message::changeLikeState,*
     *             Message::setLikers and Message::getLikers                 *
     *************************************************************************/
    public function setUp(){
        $this->mh = new MessageHandler();
    }

    /**
     * @dataProvider integrationDataProvider
     */
    public function testIntegrationOfUnits($expected, $post, $email){
        $state = $this->mh->changeLikeState($post, $email);
        $this->assertEquals($expected, $state);
    }

    /*************************************************************************************
     * Data Providers for the Big Bang Integration                                       *
     *************************************************************************************/
    public function integrationDataProvider(){
        return [
            "like a post that is liked by others" =>[
                true,
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
            "unlike a post that is liked by others" =>[
                false,
                new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        "yad.tad.yt@gmail.com,heni@gmail.com"
                    )
                , "heni@gmail.com"
            ],
            "like a post that is not liked by anyone" => [
                true,
                new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        ""
                    )
                ,"yad.tad.yt@gmail.com"
            ],
            "unlike a post that is not liked by anyone" => [
                false,
                new PostMessage(
                        "meli@gmail.com", 
                        "Sometimes, anything doesn't make sense & sometimes, everything does. What a crazy world??!!!",
                        "../../images/ecae32f8eb0933a55cb8bac4ded07711.jpg",
                        1466746516,
                        "",
                        "yad.tad.yt@gmail.com"
                    )
                ,"yad.tad.yt@gmail.com"
            ],
            "null message is provided" => [
                null, null, "whatever@whenever.com"
            ],
            
        ];
    }       

}

?>

