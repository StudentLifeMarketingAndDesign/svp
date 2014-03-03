<?php
/**
 * Log-in form for the "member" authentication method
 * @package sapphire
 * @subpackage security
 */
class MemberLoginForm extends LoginForm {

	/**
	 * This field is used in the "You are logged in as %s" message
	 * @var string
	 */
	public $loggedInAsField = 'FirstName';

	protected $authenticator_class = 'MemberAuthenticator';
	
	/**
	 * Constructor
	 *
	 * @param Controller $controller The parent controller, necessary to
	 *                               create the appropriate form action tag.
	 * @param string $name The method on the controller that will return this
	 *                     form object.
	 * @param FieldSet|FormField $fields All of the fields in the form - a
	 *                                   {@link FieldSet} of {@link FormField}
	 *                                   objects.
	 * @param FieldSet|FormAction $actions All of the action buttons in the
	 *                                     form - a {@link FieldSet} of
	 *                                     {@link FormAction} objects
	 * @param bool $checkCurrentUser If set to TRUE, it will be checked if a
	 *                               the user is currently logged in, and if
	 *                               so, only a logout button will be rendered
	 * @param string $authenticatorClassName Name of the authenticator class that this form uses.
	 */
	function __construct($controller, $name, $fields = null, $actions = null,
											 $checkCurrentUser = true) {

		// This is now set on the class directly to make it easier to create subclasses
		// $this->authenticator_class = $authenticatorClassName;

		$customCSS = project() . '/css/member_login.css';
		if(Director::fileExists($customCSS)) {
			Requirements::css($customCSS);
		}
		
		if(isset($_REQUEST['BackURL'])) {
			$backURL = $_REQUEST['BackURL'];
		} else {
			$backURL = Session::get('BackURL');
		}

		if($checkCurrentUser && Member::currentUser() && Member::logged_in_session_exists()) {
			$fields = new FieldSet(
				new HiddenField("AuthenticationMethod", null, $this->authenticator_class, $this)
			);
			$actions = new FieldSet(
				new FormAction("logout", _t('Member.BUTTONLOGINOTHER', "Log in as someone else"))
			);
		} else {
			if(!$fields) {
				$label=singleton('Member')->fieldLabel(Member::get_unique_identifier_field());
				$fields = new FieldSet(
					new HiddenField("AuthenticationMethod", null, $this->authenticator_class, $this),
					//Regardless of what the unique identifer field is (usually 'Email'), it will be held in the 'Email' value, below:
					new TextField("Email", $label, Session::get('SessionForms.MemberLoginForm.Email'), null, $this),
					new PasswordField("Password", _t('Member.PASSWORD', 'Password'))
				);
				if(Security::$autologin_enabled) {
					$fields->push(new CheckboxField(
						"Remember", 
						_t('Member.REMEMBERME', "Remember me next time?")
					));
				}
			}
			if(!$actions) {
				$actions = new FieldSet(
					new FormAction('dologin', _t('Member.BUTTONLOGIN', "Log in")),
					new LiteralField(
						'forgotPassword',
						'<p id="ForgotPassword"><a href="Security/lostpassword">' . _t('Member.BUTTONLOSTPASSWORD', "I've lost my password") . '</a></p>'
					)
				);
			}
		}

		if(isset($backURL)) {
			$fields->push(new HiddenField('BackURL', 'BackURL', $backURL));
		}

		parent::__construct($controller, $name, $fields, $actions);

		// Focus on the email input when the page is loaded
		// Only include this if other form JS validation is enabled
		if($this->getValidator()->getJavascriptValidationHandler() != 'none') {
			Requirements::customScript(<<<JS
				(function() {
					var el = document.getElementById("MemberLoginForm_LoginForm_Email");
					if(el && el.focus) el.focus(); 
				})();
JS
			);
		}
	}

	/**
	 * Get message from session
	 */
	protected function getMessageFromSession() {
		parent::getMessageFromSession();
		if(($member = Member::currentUser()) && !Session::get('MemberLoginForm.force_message')) {
			$this->message = sprintf(_t('Member.LOGGEDINAS', "You're logged in as %s."), $member->{$this->loggedInAsField});
		}
		Session::set('MemberLoginForm.force_message', false);
	}


	/**
	 * Login form handler method
	 *
	 * This method is called when the user clicks on "Log in"
	 *
	 * @param array $data Submitted data
	 */
	public function dologin($data) {
		if($this->performLogin($data)) {
			Session::clear('SessionForms.MemberLoginForm.Email');
			Session::clear('SessionForms.MemberLoginForm.Remember');
			if(Member::currentUser()->isPasswordExpired()) {
				if(isset($_REQUEST['BackURL']) && $backURL = $_REQUEST['BackURL']) {
					Session::set('BackURL', $backURL);
				}

				$cp = new ChangePasswordForm($this->controller, 'ChangePasswordForm');
				$cp->sessionMessage('Your password has expired.  Please choose a new one.', 'good');
				
				Director::redirect('Security/changepassword');
			} elseif(
				isset($_REQUEST['BackURL']) 
				&& $_REQUEST['BackURL'] 
				// absolute redirection URLs may cause spoofing 
				&& Director::is_site_url($_REQUEST['BackURL'])
			) {
				Director::redirect($_REQUEST['BackURL']);
			} elseif (Security::default_login_dest()) {
				Director::redirect(Director::absoluteBaseURL() . Security::default_login_dest());
			} else {
				$member = Member::currentUser();
				if($member) {
					$firstname = Convert::raw2xml($member->FirstName);
					
					if(!empty($data['Remember'])) {
						Session::set('SessionForms.MemberLoginForm.Remember', '1');
						$member->logIn(true);
					} else {
						$member->logIn();
					}
					
					Session::set('Security.Message.message',
						sprintf(_t('Member.WELCOMEBACK', "Welcome Back, %s"), $firstname) 
					);
					Session::set("Security.Message.type", "good");
				}
				Director::redirectBack();
			}
		} else {
			Session::set('SessionForms.MemberLoginForm.Email', $data['Email']);
			Session::set('SessionForms.MemberLoginForm.Remember', isset($data['Remember']));

			if(isset($_REQUEST['BackURL'])) $backURL = $_REQUEST['BackURL']; 
			else $backURL = null; 

		 	if($backURL) Session::set('BackURL', $backURL);			
			
			if($badLoginURL = Session::get("BadLoginURL")) {
				Director::redirect($badLoginURL);
			} else {
				// Show the right tab on failed login
				$loginLink = Director::absoluteURL(Security::Link("login")); 
				if($backURL) $loginLink .= '?BackURL=' . urlencode($backURL); 
				Director::redirect($loginLink . '#' . $this->FormName() .'_tab');
			}
		}
	}


	/**
	 * Log out form handler method
	 *
	 * This method is called when the user clicks on "logout" on the form
	 * created when the parameter <i>$checkCurrentUser</i> of the
	 * {@link __construct constructor} was set to TRUE and the user was
	 * currently logged in.
	 */
	public function logout() {
		$s = new Security();
		$s->logout();
	}


  /**
   * Try to authenticate the user
   *
   * @param array Submitted data
   * @return Member Returns the member object on successful authentication
   *                or NULL on failure.
   */
	public function performLogin($data) {
		$member = call_user_func_array(array($this->authenticator_class, 'authenticate'), array($data, $this));
		if($member) {
			$member->LogIn(isset($data['Remember']));
			return $member;
		} else {
			$this->extend('authenticationFailed', $data);
			return null;
		}
	}


	/**
	 * Forgot password form handler method
	 *
	 * This method is called when the user clicks on "I've lost my password"
	 *
	 * @param array $data Submitted data
	 */
	function forgotPassword($data) {
		$SQL_data = Convert::raw2sql($data);
		$SQL_email = $SQL_data['Email'];
		$member = DataObject::get_one('Member', "\"Email\" = '{$SQL_email}'");

		if($member) {
			$token = $member->generateAutologinTokenAndStoreHash();

			$member->sendInfo(
				'forgotPassword',
				array(
					'PasswordResetLink' => Security::getPasswordResetLink($member, $token)
				)
			);

			Director::redirect('Security/passwordsent/' . urlencode($data['Email']));
		} elseif($data['Email']) {
			// Avoid information disclosure by displaying the same status,
			// regardless wether the email address actually exists
			Director::redirect('Security/passwordsent/' . urlencode($data['Email']));
		} else {
			$this->sessionMessage(
				_t('Member.ENTEREMAIL', 'Please enter an email address to get a password reset link.'),
				'bad'
			);
			
			Director::redirect('Security/lostpassword');
		}
	}

}
?>