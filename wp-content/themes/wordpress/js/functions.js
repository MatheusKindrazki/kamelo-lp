const keyFullpage = "8B38B08D-B3274145-A905EB2A-CC97E271";

const home = () => {
	jQuery("#home").fullpage({
		licenseKey: keyFullpage,
		navigation: false,
		scrollOverflow: true,
		anchors: [
			"introducao",
			"quem-somos",
			"nosso-objetivo",
			"cadastre-se",
		],
	});
}

jQuery('document').ready(function(){
	home();
});