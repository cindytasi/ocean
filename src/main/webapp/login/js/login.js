(() => {
	const email = document.querySelector('#email');
	const password = document.querySelector('#password');
	const errMsg = document.querySelector('#errMsg');
	document.getElementById('login_button').addEventListener('click', () => {
		//	console.log(email.value);
		//	console.log(password.value);
		fetch('/Ocean/web/controller/LoginController', {
			method: 'POST',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify({
				email: email.value,
				password: password.value
			}),
		})
			.then(resp => resp.json())
			.then(body => {
				errMsg.textContent = '';
				const { successful, message } = body;
				console.log(successful);
				if (successful) {
					const { userName } = body;
//					sessionStorage.setItem('id', id);
					sessionStorage.setItem('userName', userName);
//					console.log(sessionStorage.getItem('userName'));
//					sessionStorage.setItem('roleId', roleId);
					location.href = 'http://localhost:8080/Ocean/index.html';
				} else {
					errMsg.textContent = message;
				}
			});

	});
})();
