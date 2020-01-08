const keyFullpage = "8B38B08D-B3274145-A905EB2A-CC97E271";

const home = () => {
	jQuery("#home").fullpage({
		licenseKey: keyFullpage,
		navigation: false,
		scrollOverflow: true
	});
}

const quemSomos = () => {}

const objetivo = () => {}

const cadastro = () => {}

jQuery('document').ready(function(){
	home();
});