{{-- 表单提交的错误,捕获 --}}
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                {{ $error }} <br>
            @endforeach
        </ul>
    </div>
@endif
