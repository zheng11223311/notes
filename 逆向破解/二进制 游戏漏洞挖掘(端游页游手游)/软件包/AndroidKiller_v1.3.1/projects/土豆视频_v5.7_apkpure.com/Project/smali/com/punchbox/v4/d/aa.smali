.class final Lcom/punchbox/v4/d/aa;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/y;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/y;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->d(Lcom/punchbox/v4/d/y;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->c(Lcom/punchbox/v4/d/y;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    const/16 v8, 0x2722

    const/4 v7, -0x1

    const/4 v1, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "coco://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "coco://click"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v3, "durl"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&durl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v3}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    iget-object v5, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v5}, Lcom/punchbox/v4/d/y;->a(Lcom/punchbox/v4/d/y;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2720

    invoke-static {v4, v0, v5, v6}, Lcom/punchbox/v4/d/y;->a(Lcom/punchbox/v4/d/y;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0, v2}, Lcom/punchbox/v4/d/y;->a(Lcom/punchbox/v4/d/y;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "clicktype=2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v7, :cond_2

    const-string v2, "evt=10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v7, :cond_2

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2725

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    const-string v0, "coco://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2719

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v0, "coco://openmoregame"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "coco://openh5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v0, "coco://showmore"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0, p2}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    const-string v0, "coco://apps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0, p2}, Lcom/punchbox/v4/d/y;->c(Lcom/punchbox/v4/d/y;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    const-string v0, "coco://install"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0, p2}, Lcom/punchbox/v4/d/y;->d(Lcom/punchbox/v4/d/y;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v0, "coco://start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0, p2}, Lcom/punchbox/v4/d/y;->e(Lcom/punchbox/v4/d/y;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const-string v0, "coco://taskclick"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0, p2}, Lcom/punchbox/v4/d/y;->f(Lcom/punchbox/v4/d/y;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    const-string v0, "coco://task"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "callback"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v3}, Lcom/punchbox/v4/d/y;->a(Lcom/punchbox/v4/d/y;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/punchbox/v4/d/ab;

    invoke-direct {v3, p0}, Lcom/punchbox/v4/d/ab;-><init>(Lcom/punchbox/v4/d/aa;)V

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "adInfo"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x2723

    iput v0, v4, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    move v0, v1

    goto/16 :goto_0

    :cond_d
    const-string v0, "coco://onload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "View"

    const-string v2, "page onload."

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->c(Lcom/punchbox/v4/d/y;)V

    move v0, v1

    goto/16 :goto_0

    :cond_e
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0, p2}, Lcom/punchbox/v4/d/y;->g(Lcom/punchbox/v4/d/y;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/aa;->a:Lcom/punchbox/v4/d/y;

    invoke-static {v0}, Lcom/punchbox/v4/d/y;->b(Lcom/punchbox/v4/d/y;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method
