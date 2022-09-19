.class public abstract Lcn/domob/android/ads/h;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/h$c;,
        Lcn/domob/android/ads/h$b;,
        Lcn/domob/android/ads/h$a;
    }
.end annotation


# static fields
.field public static final c:I = -0x1

.field private static d:Lcn/domob/android/ads/c/f; = null

.field private static final o:I = 0x14


# instance fields
.field public a:Lcn/domob/android/ads/h$a;

.field public b:Lcn/domob/android/ads/h$b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcn/domob/android/ads/h;->k:Z

    .line 44
    iput-boolean v0, p0, Lcn/domob/android/ads/h;->l:Z

    .line 45
    iput-boolean v0, p0, Lcn/domob/android/ads/h;->m:Z

    .line 46
    iput-boolean v0, p0, Lcn/domob/android/ads/h;->n:Z

    .line 54
    invoke-direct {p0}, Lcn/domob/android/ads/h;->c()V

    .line 55
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 64
    const/16 v0, 0x14

    iput v0, p0, Lcn/domob/android/ads/h;->j:I

    .line 66
    if-eq p2, v2, :cond_0

    .line 67
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Init WebView with custom background color."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/h;->setBackgroundColor(I)V

    .line 71
    :cond_0
    new-instance v0, Lcn/domob/android/ads/h$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/h$1;-><init>(Lcn/domob/android/ads/h;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/h;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 108
    new-instance v0, Lcn/domob/android/ads/h$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/h$2;-><init>(Lcn/domob/android/ads/h;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/h;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 117
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/h;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/domob/android/ads/h;->l:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/h;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/domob/android/ads/h;->m:Z

    return p1
.end method

.method static synthetic b()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 375
    if-nez v1, :cond_1

    .line 376
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    sget-object v1, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 379
    const-string v0, ""

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 391
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 393
    :goto_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 394
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 396
    :catch_1
    move-exception v0

    .line 397
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 400
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 401
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 402
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 404
    :catch_2
    move-exception v1

    goto :goto_0

    .line 387
    :catch_3
    move-exception v0

    .line 388
    const-string v0, ""

    goto :goto_0

    .line 400
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 401
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 402
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 404
    :catch_4
    move-exception v1

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 401
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 402
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 405
    :cond_3
    :goto_2
    throw v0

    .line 404
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method static synthetic b(Lcn/domob/android/ads/h;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/domob/android/ads/h;->e()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/h;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/domob/android/ads/h;->l:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/h;->setHorizontalScrollBarEnabled(Z)V

    .line 121
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/h;->setHorizontalScrollbarOverlay(Z)V

    .line 122
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/h;->setVerticalScrollBarEnabled(Z)V

    .line 123
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/h;->setVerticalScrollbarOverlay(Z)V

    .line 124
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 125
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/h;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/domob/android/ads/h;->d()V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/h;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcn/domob/android/ads/h;->j:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/ads/h$b;

    if-eqz v0, :cond_0

    .line 165
    iget-boolean v0, p0, Lcn/domob/android/ads/h;->n:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/h;->n:Z

    .line 167
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/ads/h$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/h$b;->a(Lcn/domob/android/ads/h;)V

    .line 171
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/ads/h$b;

    if-eqz v0, :cond_0

    .line 175
    iget-boolean v0, p0, Lcn/domob/android/ads/h;->n:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/h;->n:Z

    .line 177
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/ads/h$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/h$b;->b(Lcn/domob/android/ads/h;)V

    .line 181
    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/h;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/domob/android/ads/h;->m:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/ads/h$b;

    if-eqz v0, :cond_0

    .line 185
    iget-boolean v0, p0, Lcn/domob/android/ads/h;->n:Z

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/h;->n:Z

    .line 187
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/ads/h$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/h$b;->c(Lcn/domob/android/ads/h;)V

    .line 191
    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/domob/android/ads/h;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/domob/android/ads/h;->f()V

    return-void
.end method

.method static synthetic g(Lcn/domob/android/ads/h;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/domob/android/ads/h;->k:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 351
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 352
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 353
    sget-object v3, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert js file :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcn/domob/android/ads/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    sget-object v3, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JS file path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 6

    .prologue
    .line 335
    iget-object v0, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/h;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/h;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 337
    iget-object v1, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/h;->g:Ljava/lang/String;

    iget-object v4, p0, Lcn/domob/android/ads/h;->h:Ljava/lang/String;

    iget-object v5, p0, Lcn/domob/android/ads/h;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\'s timeout is set as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 218
    iput p1, p0, Lcn/domob/android/ads/h;->j:I

    .line 219
    return-void
.end method

.method public a(Lcn/domob/android/ads/h$a;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcn/domob/android/ads/h;->a:Lcn/domob/android/ads/h$a;

    .line 237
    return-void
.end method

.method public a(Lcn/domob/android/ads/h$b;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/ads/h$b;

    .line 246
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 199
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 200
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v2, "BaseWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/h$3;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/h$3;-><init>(Lcn/domob/android/ads/h;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v3, "Load WebView with url = %s and data = %s."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcn/domob/android/ads/h$c;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/h$c;-><init>(Lcn/domob/android/ads/h;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/h$c;->start()V

    .line 260
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 261
    :goto_0
    invoke-static {p2}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 263
    :goto_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 264
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/h;->loadUrl(Ljava/lang/String;)V

    .line 273
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 260
    goto :goto_0

    :cond_1
    move v3, v2

    .line 261
    goto :goto_1

    .line 265
    :cond_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    .line 266
    const-string/jumbo v0, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p0, p2, v0, v1}, Lcn/domob/android/ads/h;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/h;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 270
    :cond_4
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v3, "Error happened when loading WebView with URL = %s and data = %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lcn/domob/android/ads/h;->k:Z

    .line 228
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 311
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/h;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p2}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 320
    iput-object p1, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lcn/domob/android/ads/h;->g:Ljava/lang/String;

    .line 323
    iput-object p4, p0, Lcn/domob/android/ads/h;->h:Ljava/lang/String;

    .line 324
    iput-object p5, p0, Lcn/domob/android/ads/h;->i:Ljava/lang/String;

    .line 325
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Data is null or empty while calling \'loadDataWithBaseURL\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 279
    :try_start_0
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v0, Lcn/domob/android/ads/h;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "loadUrl() is called with url = %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 284
    new-instance v0, Lcn/domob/android/ads/k;

    invoke-virtual {p0}, Lcn/domob/android/ads/h;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/domob/android/ads/h$4;

    invoke-direct {v2, p0, p1}, Lcn/domob/android/ads/h$4;-><init>(Lcn/domob/android/ads/h;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/k$a;)V

    .line 302
    invoke-virtual {v0}, Lcn/domob/android/ads/k;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method
