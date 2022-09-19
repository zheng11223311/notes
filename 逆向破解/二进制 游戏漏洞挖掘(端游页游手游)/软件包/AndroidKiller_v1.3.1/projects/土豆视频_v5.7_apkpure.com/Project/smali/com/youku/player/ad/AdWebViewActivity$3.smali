.class Lcom/youku/player/ad/AdWebViewActivity$3;
.super Landroid/webkit/WebViewClient;
.source "AdWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/AdWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/AdWebViewActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lcom/youku/player/ad/AdWebViewActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v0}, Lcom/youku/player/ad/AdWebViewActivity;->access$300(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v2, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v2}, Lcom/youku/player/ad/AdWebViewActivity;->access$300(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v2}, Lcom/youku/player/ad/AdWebViewActivity;->access$000(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/android/player/R$string;->player_tips_not_responding:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/youku/player/ad/AdWebViewActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedError->code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->description:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->failingUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v2, -0xa

    if-ne p2, v2, :cond_0

    .line 145
    :try_start_0
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v0, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-virtual {v2, v0}, Lcom/youku/player/ad/AdWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 163
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 168
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v3

    .line 172
    :cond_1
    const-string v4, "mailto:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-virtual {v4, v1}, Lcom/youku/player/ad/AdWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v4}, Lcom/youku/player/ad/AdWebViewActivity;->access$000(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/youku/android/player/R$string;->player_webview_mail_app_not_found:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string/jumbo v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-virtual {v4, v1}, Lcom/youku/player/ad/AdWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 189
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 190
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "\u60a8\u6ca1\u6709\u5b89\u88c5\u7535\u8bdd"

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v3}, Lcom/youku/player/ad/AdWebViewActivity;->access$400(Lcom/youku/player/ad/AdWebViewActivity;)I

    move-result v3

    if-nez v3, :cond_4

    .line 198
    iget-object v3, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v3}, Lcom/youku/player/ad/AdWebViewActivity;->access$408(Lcom/youku/player/ad/AdWebViewActivity;)I

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 200
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-virtual {v3, v1}, Lcom/youku/player/ad/AdWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v3, p0, Lcom/youku/player/ad/AdWebViewActivity$3;->this$0:Lcom/youku/player/ad/AdWebViewActivity;

    invoke-static {v3}, Lcom/youku/player/ad/AdWebViewActivity;->access$300(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0
.end method
