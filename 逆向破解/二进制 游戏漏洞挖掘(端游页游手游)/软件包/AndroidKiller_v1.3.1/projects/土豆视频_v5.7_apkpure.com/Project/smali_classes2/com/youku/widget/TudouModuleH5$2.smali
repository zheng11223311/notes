.class Lcom/youku/widget/TudouModuleH5$2;
.super Ljava/lang/Object;
.source "TudouModuleH5.java"

# interfaces
.implements Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TudouModuleH5;->initWebViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouModuleH5;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouModuleH5;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/youku/widget/TudouModuleH5$2;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goUrlAfterLogin(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$2;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$100(Lcom/youku/widget/TudouModuleH5;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, "home.ad.skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$2;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$2;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/TudouModuleH5$LoadListener;->onAdShowExposure()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$2;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$100(Lcom/youku/widget/TudouModuleH5;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method
