<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
    }



    public function indexAction()
    {


        $form = new Form_GuestBook();
        $form->submit->setLabel('Додати');
        $this->view->form = $form;


        if ($this->getRequest()->isPost()) {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $captcha = $form->getValue('captcha');
                $captchaId = $captcha['id'];
                $captchaInput = $captcha['input'];
                $captchaSession = new Zend_Session_Namespace('Zend_Form_Captcha_'.$captchaId);
                $captchaIterator = $captchaSession->getIterator();
                $captchaWord = $captchaIterator['word'];
            if($captchaInput == $captchaWord)
            {
                $username = $form->getValue('username');
                $email = $form->getValue('email');
                $website = $form->getValue('website');
                $text = $form->getValue('text');
                $pages = new Model_DbTable_GuestBook();
                $pages->addData( $username, $email, $website, $text );

                $this->_helper->redirector('index','table');
            }
             else
            {
                 $this->_helper->redirector('login','auth');
            }
            } else {
                $form->populate($formData);
            }
        }
    }
}







