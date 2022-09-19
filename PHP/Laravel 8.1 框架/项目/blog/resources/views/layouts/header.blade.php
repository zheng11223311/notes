<header class="header">
    <div class="container bg-light d-flex justify-content-between align-items-center">
        <div class="d-flex">
            <a class="logo" href="{{ route('index') }}">Laravel</a>
            {{-- ml-3 margin-left 3格 --}}
            <form action="{{route('index')}}" class="form-inline my-2 my-lg-0 ml-3">
                <input name="keyword" value="{{request()->query('keyword')}}" class="form-control form-control-sm" type="search" placeholder="搜索" />
                <select name="category_id"  type="password" class="form-control form-control-sm ml-2">
                    <option value="0">请选择分类</option>
                    @foreach (categories() as $id=>$name)
                        <option {{request()->query('category_id')==$id?'selected':''}} value="{{$id}}">{{$name}}</option>
                    @endforeach
                </select>
                <button class="btn btn-sm btn-outline-success ml-2 " type="submit">搜索</button>
            </form>
        </div>
        <div class="right-bth">
            @auth
                {{-- 以登入显示的界面 --}}
                <a href="{{ route('user.info') }}" class="text-dark mr-3 text-decoration-none">
                    {{-- asset 指向 项目/public 文件,下 而public 文件夹的storage 是个软连接指向 项目/storage/app/public/下的文件 --}}
                    <img width="30" height="30"
                        src="{{ auth()->user()->avatar ? asset('storage/' . auth()->user()->avatar) : 'https://t7.baidu.com/it/u=1595072465,3644073269&fm=193&f=GIF' }}"
                        alt="" class="rounded-pill">
                    <span>{{ auth()->user()->name }}</span>
                </a>
                <a href="{{ route('blog.create') }}" class="text-dark mr-3 text-decoration-none">
                    {{-- asset 指向 项目/public 文件,下 而public 文件夹的storage 是个软连接指向 项目/storage/app/public/下的文件 --}}
                   发布博客
                </a>
                <form method="post" action="{{ route('logout') }}" class="d-inline" id="logout">
                    @csrf
                    <a href="javascript:;" onclick="document.getElementById('logout').submit()"
                        class="text-dark text-decoration-none">退出</a>
                </form>
            @else
                {{-- 未登入显示的界面 --}}

                <a href="{{ route('login') }}" class="btn  btn-sm btn-primary">登入</a>
                <a href="{{ route('register') }}" class="btn  btn-sm btn-outline-success ml-2">注册</a>
            @endauth
        </div>
    </div>
</header>
