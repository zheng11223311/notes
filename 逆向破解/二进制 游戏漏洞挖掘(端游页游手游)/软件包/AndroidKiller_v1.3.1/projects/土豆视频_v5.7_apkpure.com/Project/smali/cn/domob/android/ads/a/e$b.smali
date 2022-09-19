.class Lcn/domob/android/ads/a/e$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/e;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished with URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/e;->b(Lcn/domob/android/ads/a/e;Z)Z

    .line 472
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/e$a;->n()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->g(Lcn/domob/android/ads/a/e;)V

    .line 477
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->j(Lcn/domob/android/ads/a/e;)V

    .line 478
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 482
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 483
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted with URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->f(Lcn/domob/android/ads/a/e;)V

    .line 485
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->j(Lcn/domob/android/ads/a/e;)V

    .line 486
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/e$a;->o()V

    .line 497
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    const-string v2, "WebView ReceivedError, errorCode=%d, description=%s, failingUrl=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 430
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override URL loading in landing page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcn/domob/android/ads/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->i(Lcn/domob/android/ads/a/e;)V

    .line 463
    :cond_0
    :goto_0
    return v4

    .line 443
    :cond_1
    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    const/4 v0, 0x0

    .line 446
    :try_start_0
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 451
    :goto_1
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 458
    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/e$b;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v1}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a/e;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcn/domob/android/ads/a/e$a;->a(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v2

    const-string v3, "Error happened during loading Landing Page."

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 454
    :cond_3
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method
