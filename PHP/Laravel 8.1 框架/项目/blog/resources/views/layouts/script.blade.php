<script src="{{asset('js/jquery-3.6.0.min.js')}}"></script>
<script src="https://unpkg.com/@popperjs/core@2"></script>

<script>
    // ajax 全局设置
    $.ajaxSetup({
        // 获取头部的安全认证信息,为headers 添加认证
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
</script>


@yield('script')