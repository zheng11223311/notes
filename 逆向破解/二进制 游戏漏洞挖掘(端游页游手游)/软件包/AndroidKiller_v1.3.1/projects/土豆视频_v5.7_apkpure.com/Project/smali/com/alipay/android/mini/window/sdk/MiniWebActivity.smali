.class public Lcom/alipay/android/mini/window/sdk/MiniWebActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "url"

.field private static final b:Ljava/lang/String; = "sdk_result_code:"


# instance fields
.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ProgressBar;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/util/Map;

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    .line 49
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/FrameLayout;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/ProgressBar;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Landroid/widget/TextView;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 136
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 137
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 141
    :cond_0
    const-string v0, "mini_webView_frame"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/FrameLayout;

    .line 143
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    const/16 v3, 0x1a0a

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Ljava/util/Map;

    const-string v3, "mini_webview"

    new-array v4, v1, [I

    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getId()I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "mini_webview_back"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Ljava/util/Map;

    const-string v3, "mini_webview_back"

    new-array v4, v1, [I

    const-string v5, "mini_webview_back"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "mini_webview_forward"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Ljava/util/Map;

    const-string v3, "mini_webview_forward"

    new-array v4, v1, [I

    const-string v5, "mini_webview_forward"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "mini_webview_refresh"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Ljava/util/Map;

    const-string v3, "mini_webview_refresh"

    new-array v4, v1, [I

    const-string v5, "mini_webview_refresh"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "mini_web_title"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Ljava/util/Map;

    const-string v3, "mini_web_logo"

    new-array v4, v1, [I

    const-string v5, "mini_web_logo"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Ljava/util/Map;

    const-string v3, "mini_web_title"

    new-array v4, v1, [I

    const-string v5, "mini_web_title"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "mini_web_ProgressBar_loading"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/ProgressBar;

    .line 178
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 179
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 182
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 184
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 185
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 186
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->m:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 190
    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 192
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 195
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setDomStorageEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/al;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/sdk/al;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/an;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/sdk/an;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/ao;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/sdk/ao;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/ap;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/sdk/ap;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/aq;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/sdk/aq;-><init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "removeJavascriptInterface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_3

    .line 301
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    move v0, v1

    .line 307
    :goto_3
    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 129
    goto :goto_3

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 202
    :catch_1
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 304
    :catch_2
    move-exception v0

    .line 305
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 374
    sget-object v1, Lcom/alipay/android/app/i;->a:Ljava/lang/Object;

    .line 375
    monitor-enter v1

    .line 377
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 382
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b()V

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 371
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/mini/util/v;->a(Ljava/lang/String;)Z

    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->j:Ljava/lang/String;

    .line 82
    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->n:Ljava/lang/String;

    .line 84
    const-string v1, "from_mcashier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->m:Z

    .line 86
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh/b;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 89
    const-string v0, "mini_web_view"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 92
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->l:Ljava/util/Map;

    .line 95
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a()Z

    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->finish()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 314
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d:Landroid/widget/FrameLayout;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 319
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 320
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 321
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 322
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c:Landroid/webkit/WebView;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->e:Landroid/widget/ImageView;

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->f:Landroid/widget/ImageView;

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->g:Landroid/widget/ImageView;

    .line 336
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->m:Z

    if-eqz v0, :cond_5

    .line 337
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b()V

    .line 339
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 340
    return-void
.end method
