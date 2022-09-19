.class Lcom/tudou/webview/IntegratedWebView$2;
.super Landroid/webkit/WebViewClient;
.source "IntegratedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/webview/IntegratedWebView;->init(Lcom/tudou/ui/activity/BuildInBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/webview/IntegratedWebView;

.field final synthetic val$context:Lcom/tudou/ui/activity/BuildInBrowserActivity;


# direct methods
.method constructor <init>(Lcom/tudou/webview/IntegratedWebView;Lcom/tudou/ui/activity/BuildInBrowserActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    iput-object p2, p0, Lcom/tudou/webview/IntegratedWebView$2;->val$context:Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$300(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$300(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;->setReceiveTitle(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$400(Lcom/tudou/webview/IntegratedWebView;)V

    .line 164
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0, p2}, Lcom/tudou/webview/IntegratedWebView;->access$102(Lcom/tudou/webview/IntegratedWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    const-string v0, "javascript:console.log(\'MAGIC\'+document.getElementById(\'wxImg\')[\'src\']);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 153
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$200(Lcom/tudou/webview/IntegratedWebView;)V

    .line 154
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0, p2}, Lcom/tudou/webview/IntegratedWebView;->access$102(Lcom/tudou/webview/IntegratedWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$400(Lcom/tudou/webview/IntegratedWebView;)V

    .line 173
    const-string v0, "IntegratedWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 176
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$500(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;->sendEmptyMessage(I)Z

    .line 178
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 117
    iget-object v5, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v5, p2}, Lcom/tudou/webview/IntegratedWebView;->access$102(Lcom/tudou/webview/IntegratedWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 120
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "IntegratedWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheme : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " host : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, "limits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_0

    .line 123
    sget-object v5, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v5, Lcom/youku/vo/Initial;->limit_domain:Ljava/util/ArrayList;

    .line 124
    :cond_0
    if-eqz v3, :cond_2

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 126
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    .end local v1    # "i":I
    :goto_1
    return v8

    .line 125
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 133
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/tudou/webview/IntegratedWebView$2;->val$context:Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-static {v5, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "IntegratedWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Lcom/tudou/webview/IntegratedWebView$2;->this$0:Lcom/tudou/webview/IntegratedWebView;

    iget-object v5, v5, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v5, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
