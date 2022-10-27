function CustomAlert(){
  this.alert = function(message,title){
    document.body.innerHTML = document.body.innerHTML + '<div id="dialogoverlay"></div><div id="dialogbox" class="slit-in-vertical"><div><div id="dialogboxhead"></div><div id="dialogboxbody"></div><div id="dialogboxfoot"></div></div></div>';

    let dialogoverlay = document.getElementById('dialogoverlay');
    let dialogbox = document.getElementById('dialogbox');
    
    let winH = window.innerHeight;
    dialogoverlay.style.height = winH+"px";
    
    dialogbox.style.top = "100px";

    dialogoverlay.style.display = "block";
    dialogbox.style.display = "block";
    
    document.getElementById('dialogboxhead').style.display = 'block';

    if(typeof title === 'undefined') {
      document.getElementById('dialogboxhead').style.display = 'none';
    } else {
      document.getElementById('dialogboxhead').innerHTML = '<i class="fa fa-exclamation-circle" aria-hidden="true"></i> '+ title;
    }
    document.getElementById('dialogboxbody').innerHTML = message;
    document.getElementById('dialogboxfoot').innerHTML = '<button class="pure-material-button-contained active" onclick="customAlert.ok()">OK</button>';
  }
  
  this.ok = function(){
    document.getElementById('dialogbox').style.display = "none";
    document.getElementById('dialogoverlay').style.display = "none";
  }
}

let customAlert = new CustomAlert();

document.getElementById("year").innerHTML = new Date().getFullYear();
var modal_click = document.getElementById("myModal");
var span_click = document.getElementsByClassName("close")[0];

function callmodal() {
	modal_click.style.display = "block";
}
span_click.onclick = function() {
	modal_click.style.display = "none";
}
window.onclick = function(event) {
	if (event.target == modal_click) {
		modal_click.style.display = "none";
	}
}

document.getElementById("myLogin").addEventListener('contextmenu', (e) => {
	e.preventDefault();
});
document.onkeydown = function(e) {
	if (event.keyCode == 123) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
		return false;
	}
}

document.getElementById("myLockScreen").addEventListener('contextmenu', (e) => {
	e.preventDefault();
});
document.onkeydown = function(e) {
	if (event.keyCode == 123) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
		return false;
	}
}

document.getElementById("myModal").addEventListener('contextmenu', (e) => {
	e.preventDefault();
});
document.onkeydown = function(e) {
	if (event.keyCode == 123) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
		return false;
	}
	if (e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
		return false;
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

firebase.auth().signInWithPopup(provider).then(function(result) {
	// This gives you a Google Access Token. You can use it to access the Google API.
	var token = result.credential.accessToken;
	// The signed-in user info.
	var user = result.user;
	// ...
}).catch(function(error) {
	// Handle Errors here.
	var errorCode = error.code;
	var errorMessage = error.message;
	// The email of the user's account used.
	var email = error.email;
	// The firebase.auth.AuthCredential type that was used.
	var credential = error.credential;
	// ...
});


firebase.auth().getRedirectResult().then(function(result) {
	if (result.credential) {
		// This gives you a Google Access Token. You can use it to access the Google API.
		var token = result.credential.accessToken;
		// ...
	}
	// The signed-in user info.
	var user = result.user;
}).catch(function(error) {
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
	var user = firebase.auth().currentUser;
	user.sendEmailVerification().then(function() {
		customAlert.alert("Verification link sent to your email. if you don't see it, please check your mail inbox in spam folder.")
	}).catch(function(error) {
		var errorCode = error.code;
		var errorMessage = error.message;
		customAlert.alert(errorMessage);
	});
});

firebase.auth().onAuthStateChanged((user) => {
	if (user) {
		// User is signed in, see docs for a list of available properties
		// https://firebase.google.com/docs/reference/js/firebase.User
		const uid = user.uid;
		const email = user.email;
		const emailVerified = user.emailVerified;

		document.getElementById('welcome-email').innerHTML = email

		if (emailVerified == true) {
			document.getElementById("verify").style.display = "none"
			document.getElementById('email_Verified').innerHTML = "✔️"
			document.getElementById("myLockScreen").style.display = "none";
		} else {
			document.getElementById('email_Verified').innerHTML = "❌"
			document.getElementById("myLockScreen").style.display = "block";
			document.getElementById("verify").style.display = "block"
		}

	} else {

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
		customAlert.alert("Enter E-mail.");
	} else if (password.trim().length < 6) {
		customAlert.alert("Password must be at least 6 characters.");
	} else if (email != reemail) {
		customAlert.alert("emails do not match.");
	} else {
		auth
			.createUserWithEmailAndPassword(email, password)

			.catch(function(error) {
				// Handle Errors here.
				var errorCode = error.code;
				var errorMessage = error.message;
				customAlert.alert(errorMessage);
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
		customAlert.alert("Enter E-mail.");
	} else if (password.trim() == "") {
		customAlert.alert("Enter Password.");
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
		.catch(function(error) {
			// Handle Errors here.
			var errorCode = error.code;
			var errorMessage = error.message;

			customAlert.alert(errorMessage);
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
		.then(function() {
			location.reload();
		})
		.catch(function(error) {
			customAlert.alert("error signing out, check network connection");
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
			customAlert.alert("Enter Your E-mail.");
		} else {
			forgotPassword(email);
		}
	});

const forgotPassword = (email) => {
	auth
		.sendPasswordResetEmail(email)
		.then(function() {
			customAlert.alert("Send to your e-mail successfully! if you don't see it, please check your mail inbox in spam folder.");
		})
		.catch(function(error) {
			customAlert.alert("invalid e-mail or bad network connection.");
		});
}