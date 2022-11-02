var modal_click = document.querySelector("#myModal");
var span_click = document.getElementsByClassName("close")[0];


function CallModalChangePasswordShow() {
  document.querySelector("#myChangePassword").style.display = "block";
}

function CallModalChangePasswordHide() {
  document.querySelector("#myChangePassword").style.display = "none";
}

function CallModalChangeProfileShow() {
  document.querySelector("#myChangeProfile").style.display = "block";
  document.querySelector("#profile-name").value = document.querySelector("#your-name").innerHTML
  document.querySelector("#profile-phone").value = document.querySelector("#user-contact").innerHTML
  document.querySelector("#profile-url").value = document.querySelector("#myavatar").src
}

function CallModalChangeProfileHide() {
  document.querySelector("#myChangeProfile").style.display = "none";
}

function callmodal() {
  modal_click.style.display = "block";
}
span_click.onclick = function () {
  modal_click.style.display = "none";
}

window.onclick = function (event) {

  if (event.target == modal_click) {
    modal_click.style.display = "none";
  }
}

// Your web app's Firebase configuration
var firebaseConfig = {
  apiKey: "AIzaSyAVAJkbUGmPHogF_WJRa3vxZ2YuKDsvqns",
  authDomain: "buananetpbun-5d979.firebaseapp.com",
  databaseURL: "https://buananetpbun-5d979.firebaseio.com",
  projectId: "buananetpbun-5d979",
  storageBucket: "buananetpbun-5d979.appspot.com",
  messagingSenderId: "912166778245",
  appId: "1:912166778245:web:c845ec7e720f7bd84580ec",
  measurementId: "G-FSDV7HGD99"
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);

//invokes firebase authentication.
const auth = firebase.auth();

const user = firebase.auth().currentUser;

const provider = new firebase.auth.GoogleAuthProvider();


//const newPassword = firebase.auth().getASecureRandomPassword;

firebase.auth().signInWithPopup(provider).then(function (result) {
  // This gives you a Google Access Token. You can use it to access the Google API.
  var token = result.credential.accessToken;
  // The signed-in user info.
  var user = result.user;
  document.querySelector('#user-contact').innerHTML = user;
  // ...
}).catch(function (error) {
  // Handle Errors here.
  var errorCode = error.code;
  var errorMessage = error.message;
  // The email of the user's account used.
  var email = error.email;
  // The firebase.auth.AuthCredential type that was used.
  var credential = error.credential;
  // ...
});


firebase.auth().getRedirectResult().then(function (result) {
  if (result.credential) {
    // This gives you a Google Access Token. You can use it to access the Google API.
    var token = result.credential.accessToken;
    // ...
  }
  // The signed-in user info.
  var user = result.user;
}).catch(function (error) {
  // Handle Errors here.
  var errorCode = error.code;
  var errorMessage = error.message;
  // The email of the user's account used.
  var email = error.email;
  // The firebase.auth.AuthCredential type that was used.
  var credential = error.credential;
  // ...
});


document.querySelector("#google-sign-in").addEventListener("click", () => {
  firebase.auth().signInWithPopup(provider).then(res => {}).catch(e => {})
});


document.querySelector("#verify").addEventListener("click", () => {
  var actionCodeSettings = {
    // After email is verified, the user will be give the ability to go back
    // to the sign-in page.
    url: 'https://buananetpbun.github.io/',
    handleCodeInApp: false
  };
  firebase.auth().currentUser.sendEmailVerification(actionCodeSettings)
    .then(function () {
      // Verification email sent.
      Alert.render("✔️ Verification link sent to your email. if you don't see it, please check your mail inbox in spam folder.")
    })
    .catch(function (error) {
      // Error occurred. Inspect error.code.
      var errorCode = error.code;
      var errorMessage = error.message;
      Alert.render('❌ ' + errorMessage);
    });

});

firebase.auth().onAuthStateChanged((user) => {
	
  if (user) {
    // User is signed in, see docs for a list of available properties
    // https://firebase.google.com/docs/reference/js/firebase.User
    

	//const uid = user.uid;
   // const email = user.email;
    //const emailVerified = user.emailVerified;
    //const photoUrl = user.photoUrl;
    //const displayName = user.displayName;
   // const phoneNumber = user.phoneNumber;
	
    document.querySelector("#myProfile").style.display = "block";

    document.querySelector('#welcome-email').innerHTML = firebase.auth().currentUser.email;
	document.querySelector('#profile-email').innerHTML = firebase.auth().currentUser.email;
	document.querySelector('#your-name').innerHTML = firebase.auth().currentUser.displayName;
    document.querySelector('#myavatar').src = firebase.auth().currentUser.photoURL;
	
    document.querySelector('#user-contact').innerHTML = firebase.auth().currentUser.phoneNumber;


if (firebase.auth().currentUser.photoURL == null) {
document.querySelector('#myavatar').src = "https://user-images.githubusercontent.com/42666125/199234814-c320e1fc-da95-489e-a955-43b82e3f4b46.png";
}

    if (firebase.auth().currentUser.emailVerified == true) {
      document.querySelector("#verify").style.display = "none"
      document.querySelector('#email_Verified').innerHTML = " ✔️ <span style='color:#16C60C;font-weight:bold;'>ACTIVATED</span>"

    } else {
      document.querySelector('#email_Verified').innerHTML = " ❌ <span style='color:red;font-weight:bold;'>NOT ACTIVATED</span>"

    }

  } else {
    document.querySelector("#myLogin").style.display = "block";
  }
});


document.querySelector("#show-register").addEventListener("click", () => {
  showRegistration();
});


const showRegistration = () => {
  document.querySelector("#registration-page").classList.remove("hide");
  document.querySelector("#login-page").classList.add("hide");
  document.querySelector("#homepage").classList.add("hide");
  document.querySelector("#show-login").classList.remove("hide");
  document.querySelector("#show-register").classList.add("hide");
};

document.querySelector("#show-login").addEventListener("click", () => {
  showLogin();
});

const showLogin = () => {
  document.querySelector("#registration-page").classList.add("hide");
  document.querySelector("#login-page").classList.remove("hide");
  document.querySelector("#homepage").classList.add("hide");
  document.querySelector("#show-login").classList.add("hide");
  document.querySelector("#show-register").classList.remove("hide");
};

document.querySelector("#signout").addEventListener("click", () => {
  signOut();
});


const register = () => {
  const email = document.querySelector("#registration-email").value;
  const reemail = document.querySelector("#registration-reemail").value;
  const password = document.querySelector("#registration-password").value;

  if (email.trim() == "") {
    Alert.render("❌ Enter E-mail.");
  } else if (password.trim().length < 6) {
    Alert.render("❌ Password must be at least 6 characters.");
  } else if (email != reemail) {
    Alert.render("❌ emails do not match.");
  } else {
    auth
      .createUserWithEmailAndPassword(email, password)

      .catch(function (error) {
        // Handle Errors here.
        var errorCode = error.code;
        var errorMessage = error.message;
        Alert.render('❌ ' + errorMessage);
        // ...
      });
  }
};

document.querySelector("#register").addEventListener("click", () => {
  register();
});

//register when you hit the enter key
document
  .querySelector("#registration-password")
  .addEventListener("keyup", (e) => {
    if (event.keyCode === 13) {
      e.preventDefault();
      register();
    }
  });


const login = () => {
  const email = document.querySelector("#login-email").value;
  const password = document.querySelector("#login-password").value;

  if (email.trim() == "") {
    Alert.render("❌ Enter E-mail.");
  } else if (password.trim() == "") {
    Alert.render("❌ Enter Password.");
  } else {
    authenticate(email, password);
  }
};

document.querySelector("#login").addEventListener("click", () => {
  login();
});

//sign in when you hit enter
document
  .querySelector("#login-password")
  .addEventListener("keyup", (e) => {
    if (event.keyCode === 13) {
      e.preventDefault();
      login();
    }
  });

const authenticate = (email, password) => {
  const auth = firebase.auth();
  auth.signInWithEmailAndPassword(email, password);
  firebase
    .auth()
    .signInWithEmailAndPassword(email, password)
    .catch(function (error) {
      // Handle Errors here.
      var errorCode = error.code;
      var errorMessage = error.message;

      Alert.render('❌ ' + errorMessage);
    });
};

const showHomepage = () => {
  document.querySelector("#registration-page").classList.add("hide");
  document.querySelector("#login-page").classList.add("hide");
  document.querySelector("#homepage").classList.remove("hide");
  document.querySelector("#myLogin").style.display = "none";
};

const signOut = () => {
  firebase
    .auth()
    .signOut()
    .then(function () {
      location.reload();
    })
    .catch(function (error) {
      Alert.render("❌ error signing out, check network connection");
    });
};

auth.onAuthStateChanged((firebaseUser) => {
  if (firebaseUser) {
    showHomepage();
  }
});

document
  .querySelector("#forgot-password")
  .addEventListener("click", () => {
    const email = document.querySelector("#login-email").value;
    if (email.trim() == "") {
      Alert.render("❌ Enter Your E-mail.");
    } else {
      forgotPassword(email);
    }
  });

const forgotPassword = (email) => {
  auth
    .sendPasswordResetEmail(email)
    .then(function () {
      Alert.render("✔️ Send to your e-mail successfully! if you don't see it, please check your mail inbox in spam folder.");
    })
    .catch(function (error) {
      Alert.render("❌ invalid e-mail or bad network connection.");
    });
};


document.querySelector("#change-pass-button").addEventListener("click", () => {
  CangePassword();
});

const CangePassword = () => {
  const user = firebase.auth().currentUser;
  const newpassword = document.querySelector("#new-password").value;
  const renewpassword = document.querySelector("#re-new-password").value;

  if (newpassword.trim() == "") {
    Alert.render("❌ Enter New Password");
  } else if (newpassword.trim().length < 6) {
    Alert.render("❌ Password must be at least 6 characters.");
  } else if (newpassword != renewpassword) {
    Alert.render("❌ New Password do not match.");
  } else {
    user.updatePassword(newpassword)
      .then(function () {
        document.querySelector("#myChangePassword").style.display = "none";
        Alert.render("✔️ Update New Password successfully! Relogin please wait..");
        setTimeout(signOut, 10000)
      })
      // Update successful.

      .catch((error) => {
        // An error ocurred
        // ...
        var errorCode = error.code;
        var errorMessage = error.message;
        Alert.render('❌ ' + errorMessage);
        // ...
      });

  }
};

function save(phone: string, e) {
    e.preventDefault();
    const { currentUser:fuser } = firebase.auth();
    if(fuser && fuser.phoneNumber !== phone) {
        try {
            const verifier = new firebase.auth.RecaptchaVerifier('recaptcha-container', {
                callback: (response) => console.log('callback', response),
                size: 'invisible',
            });
            const phoneProvider = new firebase.auth.PhoneAuthProvider();
            const id = await phoneProvider.verifyPhoneNumber(phone, verifier);
            const code = window.prompt('Bitte zugeschickten Code eingeben');
            const cred = firebase.auth.PhoneAuthProvider.credential(id, code);
            await fuser.updatePhoneNumber(cred);
            console.log('phone number changed', id, cred, fuser);
            setSuccess(true);
        } catch(e) {
            console.error(e);
        }
    }
}

const CangeProfile = () => {
	const user = firebase.auth().currentUser;
  const profilename = document.querySelector("#profile-name").value;
  const profilephone = document.querySelector("#profile-phone").value;
  const profileurl = document.querySelector("#profile-url").value;

         user.updateProfile({
            displayName: profilename,
            photoURL: profileurl,
         	phoneNumber: profilephone,	
        })

      .then(function () {
        document.querySelector("#myChangeProfile").style.display = "none";
        Alert.render("✔️ Update Profile successfully! reload page, please wait..");
        setTimeout(() => {document.location.reload();}, 5000);

      })
      // Update successful.

      .catch((error) => {
        // An error ocurred
        // ...
        var errorCode = error.code;
        var errorMessage = error.message;
        Alert.render('❌ ' + errorMessage);
        // ...
      });

 
};


const DeleteMember = () => {


  Confirm.render2("❓ Are you sure for delete this member account?");


};


function CustomAlert() {
  this.render = function (dialog) {
    var winW = window.innerWidth;
    var winH = window.innerHeight;
    var dialogoverlay = document.querySelector('#dialogoverlay');
    var dialogbox = document.querySelector('#dialogbox');
    dialogoverlay.style.display = "block";
    dialogoverlay.style.height = winH + "px";
    dialogbox.style.left = (winW / 2) - (550 * .5) + "px";
    dialogbox.style.top = "100px";
    dialogbox.style.display = "block";
    document.querySelector('#dialogboxhead').innerHTML = "<i>Information!</i>";
    document.querySelector('#dialogboxbody').innerHTML = dialog;
    document.querySelector('#dialogboxfoot').innerHTML = '<button style="width:100px" onclick="Alert.ok()">OK</button>';
  }
  this.ok = function () {
    document.querySelector('#dialogbox').style.display = "none";
    document.querySelector('#dialogoverlay').style.display = "none";
  }
}
var Alert = new CustomAlert();


function CustomConfirm() {
  this.render2 = function (dialog) {
    var winW = window.innerWidth;
    var winH = window.innerHeight;
    var dialogoverlay = document.querySelector('#dialogoverlay');
    var dialogbox = document.querySelector('#dialogbox');
    dialogoverlay.style.display = "block";
    dialogoverlay.style.height = winH + "px";
    dialogbox.style.left = (winW / 2) - (550 * .5) + "px";
    dialogbox.style.top = "100px";
    dialogbox.style.display = "block";
    document.querySelector('#dialogboxhead').innerHTML = "<i>Confirmation!</i>";
    document.querySelector('#dialogboxbody').innerHTML = dialog;
    document.querySelector('#dialogboxfoot').innerHTML = '<button style="width:100px" onclick="Confirm.ok()">OK</button><button style="width:100px" onclick="Confirm.cancel()">Cancel</button>';
  }
  this.ok = function () {
    document.querySelector('#dialogbox').style.display = "none";
    document.querySelector('#dialogoverlay').style.display = "none";
    const user = firebase.auth().currentUser;

    user.delete().then(() => {
      // User deleted.
      Alert.render("✔️ Delete Member Accound successfully! Relogin Please Wait..");
      setTimeout(signOut, 10000)
    }).catch((error) => {
      // An error ocurred
      // ...
      var errorCode = error.code;
      var errorMessage = error.message;
      Alert.render('❌ ' + errorMessage);
    });;
  }
  this.cancel = function () {
    document.querySelector('#dialogbox').style.display = "none";
    document.querySelector('#dialogoverlay').style.display = "none";
    return false
  }
}

var Confirm = new CustomConfirm();