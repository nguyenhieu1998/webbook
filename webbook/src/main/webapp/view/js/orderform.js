const inputName = document.getElementById("name");
const inputEmail = document.getElementById("email");
const inputAddress = document.getElementById("street");
const inputCity = document.getElementById("city");
const inputPhone = document.getElementById("phone");

const registerCl = document.getElementById("btn-submit");
registerCl.addEventListener("click", function () {
  const data = {
    Name: inputName.value,
    Email: inputEmail.value,
    Address: inputAddress.value,
    City: inputCity.value,
    Phone: inputPhone.value,
  };
  // console.log("AAA");
  validate(data);
});

// validate
function validate(data) {
  if (inputName.value === "") {
    alert("Hãy nhập tên của bạn");
    return;
  }
  if (inputEmail.value === "") {
    alert("Hãy nhập địa chỉ email của bạn");
    return;
  }
  if (inputAddress.value === "") {
    alert("Hãy nhập địa chỉ nhận hàng của bạn");
    return;
  }
  if (inputCity.value === "") {
    alert("Hãy nhập thành phố bạn đang sinh sống");
    return;
  }
  if (inputPhone.value === "") {
    alert("Hãy nhập số điện thoại của bạn");
    return;
  }
}
