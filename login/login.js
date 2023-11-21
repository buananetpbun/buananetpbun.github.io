document.querySelector("#year").innerHTML = new Date().getFullYear();

// Your web app's Firebase configuration
var firebaseConfig = {
	apiKey: "AIzaSyAVAJkbUGmPHogF_WJRa3vxZ2YuKDsvqns",
	authDomain: "buananetpbun-5d979.firebaseapp.com",
	databaseURL: "https://buananetpbun-5d979-default-rtdb.asia-southeast1.firebasedatabase.app",
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

// call API admin.buananet.com
const api_endpoint = 'https://admin.buananet.com/api';

firebase.auth().onAuthStateChanged((user) => {
	if (user) {
		localStorage.setItem('user_mail', firebase.auth().currentUser.email)
	} else {
		localStorage.removeItem('user_mail')
	}
});

function membership_info() {
	$.ajax({
		url: api_endpoint + '/membership/user-membership',
		method: "POST",
		data: {
			'user': localStorage.getItem('user_mail'),
		},
		beforeSend: function() {},
		success: function(response) {
			localStorage.setItem('membership_info', JSON.stringify(response.data))
		},
		error: function(response) {
			localStorage.removeItem('membership_info')
		}
	});
	if (localStorage.getItem('membership_info')) {
		let data = localStorage.getItem('membership_info')
		return JSON.parse(data)
	} else {
		return null
	}
}

document.querySelector("#verify").addEventListener("click", () => {
	var actionCodeSettings = {
		// After email is verified, the user will be give the ability to go back
		// to the sign-in page.
		url: 'https://buananet.com/login/',
		handleCodeInApp: false
	};

	firebase.auth().currentUser.sendEmailVerification(actionCodeSettings).then(function() {
		// Verification email sent.
		Alert.render("✔️ Verification link sent to your email. if you don't see it, please check your mail inbox in spam folder.")
	}).catch(function(error) {
		// Error occurred. Inspect error.code.
		var errorCode = error.code;
		var errorMessage = error.message;
		Alert.render('❌ ' + errorMessage);
	});
});

document.querySelector("#not-subscribe").addEventListener("click", () => {
	window.location.href = 'https://buananet.com/login/';
});

var myTimer;

function myInterval() {
	location.reload()
}

firebase.auth().onAuthStateChanged((user) => {
	if (user) {
		// User is signed in, see docs for a list of available properties
		// https://firebase.google.com/docs/reference/js/firebase.User
		const uid = user.uid;
		const email = user.email;
		const emailVerified = user.emailVerified;
		var member = membership_info()
		document.querySelector('#welcome-email').innerHTML = email
		document.querySelector('#myavatar').src = firebase.auth().currentUser.photoURL;
		if (firebase.auth().currentUser.photoURL == null) {
			document.querySelector('#myavatar').src = "https://user-images.githubusercontent.com/42666125/199234814-c320e1fc-da95-489e-a955-43b82e3f4b46.png";
		}
		clearInterval(myTimer)
		if (emailVerified == true) {
			// EMAIL TERVERIFIKASI DI FIREBASE 
			document.querySelector('#center-screen1').style.display = "none"
			document.querySelector('#email_Verified').innerHTML = "✔️"
			// TAMPILKAN HALAMAN POPUP PEMBAYARAN
			if (member == null || member.status != 'active') {
				document.querySelector('#myLockScreen').style.display = "block";
				document.querySelector('#center-screen2').style.display = "block"

				var timeleft = 60;
				var downloadTimer = setInterval(function() {
					if (timeleft <= 0) {
						clearInterval(downloadTimer);
					} else {
						document.getElementById("countdown3").innerHTML = "Reload Page in " + timeleft + " seconds";
					}
					timeleft -= 1;
				}, 1000);
				myTimer = setInterval(myInterval, 60000)
			}
		} else {
			// EMAIL TIDAK TERVERIFIKASI DI FIREBASE, TAMPILKAN HALAMAN VERIFIKASI
			document.querySelector('#email_Verified').innerHTML = "❌"
			document.querySelector('#myLockScreen').style.display = "block";
			document.querySelector('#center-screen2').style.display = "none"
			document.querySelector('#center-screen1').style.display = "block"
			var timeleft = 60;
			var downloadTimer = setInterval(function() {
				if (timeleft <= 0) {
					clearInterval(downloadTimer);
				} else {
					document.getElementById("countdown2").innerHTML = "Reload Page in " + timeleft + " seconds";
				}
				timeleft -= 1;
			}, 1000);
			myTimer = setInterval(myInterval, 60000)
		}
	} else {
		// USER BELUM LOGIN DI FIREBASE, TAMPILKAN HALAMAN LOGIN
		document.querySelector('#myLockScreen').style.display = "block";
		document.querySelector('#center-screen2').style.display = "block"
		document.querySelector('#center-screen1').style.display = "none"
		var timeleft = 60;
		var downloadTimer = setInterval(function() {
			if (timeleft <= 0) {
				clearInterval(downloadTimer);
			} else {
				document.getElementById("countdown3").innerHTML = "Reload Page in " + timeleft + " seconds";
			}
			timeleft -= 1;
		}, 1000);
		myTimer = setInterval(myInterval, 60000)
	}
});

document.querySelector("#signout").addEventListener("click", () => {
	signOut();
});

const showHomepage = () => {
	document.querySelector("#homepage").classList.remove("hide");
};

const signOut = () => {
	firebase.auth().signOut().then(function() {
		// location.reload();
		location.href = 'https://buananet.com/'
	}).catch(function(error) {
		Alert.render("❌ error signing out, check network connection");
	});
};

auth.onAuthStateChanged((firebaseUser) => {
	if (firebaseUser) {
		showHomepage();
	}
});

document.querySelector("#myLockScreen").addEventListener('contextmenu', (e) => {
	e.preventDefault();
});

document.querySelector("#mymenu").addEventListener('contextmenu', (e) => {
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

function CustomAlert() {
	this.render = function(dialog) {
		var winW = window.innerWidth;
		var winH = window.innerHeight;
		var dialogoverlay = document.querySelector('#dialogoverlay');
		var dialogbox = document.querySelector('#dialogbox');
		dialogoverlay.style.display = "block";
		dialogoverlay.style.height = winH + "px";
		dialogbox.style.left = (winW / 2) - (400 * .5) + "px";
		dialogbox.style.top = "100px";
		dialogbox.style.display = "block";
		document.querySelector('#dialogboxhead').innerHTML = "<i>Information!</i>";
		document.querySelector('#dialogboxbody').innerHTML = dialog;
		document.querySelector('#dialogboxfoot').innerHTML = '<button style="width:100px" onclick="Alert.ok()">OK</button>';
	}
	this.ok = function() {
		document.querySelector('#dialogbox').style.display = "none";
		document.querySelector('#dialogoverlay').style.display = "none";
	}
}
var Alert = new CustomAlert();