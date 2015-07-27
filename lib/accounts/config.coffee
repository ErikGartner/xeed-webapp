AccountsTemplates.configure(
  confirmPassword: true
  enablePasswordChange: true
  sendVerificationEmail: true

  showForgotPasswordLink: true
  enforceEmailVerification: false
  homeRoutePath: '/home'
)

Router.plugin 'ensureSignedIn', except: ['home', 'atSignIn', 'atSignUp',
                                         'atForgotPwd', 'atResetPwd' ]

AccountsTemplates.configureRoute 'signIn',
  layoutTemplate: 'publicLayout'
  redirect: '/'

AccountsTemplates.configureRoute 'signUp',
  layoutTemplate: 'publicLayout'
  redirect: '/'

AccountsTemplates.configureRoute 'forgotPwd',
  layoutTemplate: 'publicLayout'
  redirect: '/'

AccountsTemplates.configureRoute 'ensureSignedIn',
  layoutTemplate: 'publicLayout'
