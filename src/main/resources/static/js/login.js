document.getElementById('loginButton').addEventListener('click', function (event) {
    event.preventDefault(); // 阻止表单的默认提交行为

    // 获取输入字段
    var username = document.getElementById('username').value;
    var passwd = document.getElementById('passwd').value;

    // 检查用户名和密码是否为空
    if (username === '' || passwd === '') {
        alert('用户名和密码不能为空！');
        return;
    }

    // 使用 Axios 发送登录请求
    axios.post('/user/login', {
        username: username,
        password: passwd
    })
        .then(function (response) {
            if (response.status === 200) {
                // 根据power值跳转到不同页面
                var power = response.data.power;
                if (power === 0) {
                    window.location.href = '/user/admin_dashboard';
                } else if (power === 1) {
                    window.location.href = '/user/reader_dashboard';
                } else {
                    alert('未知用户权限');
                }
            } else {
                alert('登录失败，请检查用户名和密码！');
            }
        })
        .catch(function (error) {
            // 处理错误
            console.error('登录失败:', error);
            if (error.response && error.response.status === 401) {
                alert('登录失败，请检查用户名和密码！');
            } else {
                alert('登录失败，服务器发生错误！');
            }
        });
});
