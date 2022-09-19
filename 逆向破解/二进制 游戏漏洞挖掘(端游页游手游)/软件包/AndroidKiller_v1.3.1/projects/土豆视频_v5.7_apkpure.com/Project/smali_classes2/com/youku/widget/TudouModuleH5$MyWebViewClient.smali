.class Lcom/youku/widget/TudouModuleH5$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TudouModuleH5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TudouModuleH5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouModuleH5;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouModuleH5;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v0, "TudouModuleWebView"

    const-string v1, "MyWebViewClient onPageFinished"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/TudouModuleH5$LoadListener;->onLoadFinished()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    sget-object v1, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_SUCCESS:Lcom/youku/widget/TudouModuleH5$LoadingState;

    invoke-static {v0, v1}, Lcom/youku/widget/TudouModuleH5;->access$200(Lcom/youku/widget/TudouModuleH5;Lcom/youku/widget/TudouModuleH5$LoadingState;)V

    .line 302
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 291
    const-string v0, "TudouModuleWebView"

    const-string v1, "MyWebViewClient onPageStarted"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/TudouModuleH5$LoadListener;->OnLoadStarted()V

    .line 294
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "TudouModuleWebView"

    const-string v1, "MyWebViewClient onReceivedError"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/TudouModuleH5$LoadListener;->onLoadError()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    sget-object v1, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_FAILED:Lcom/youku/widget/TudouModuleH5$LoadingState;

    invoke-static {v0, v1}, Lcom/youku/widget/TudouModuleH5;->access$200(Lcom/youku/widget/TudouModuleH5;Lcom/youku/widget/TudouModuleH5$LoadingState;)V

    .line 310
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 314
    const-string v7, "TudouModuleWebView"

    const-string v8, "MyWebViewClient shouldOverrideUrlLoading"

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "http"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 318
    const-string v7, "?"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "arg":Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "strs":[Ljava/lang/String;
    const-string v2, "{"

    .line 322
    .local v2, "jsonStr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 323
    aget-object v7, v4, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "strs2":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 327
    .end local v5    # "strs2":[Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    const-class v7, Lcom/youku/vo/SkipInfo;

    invoke-static {v2, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SkipInfo;

    .line 331
    .local v3, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v7, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v7}, Lcom/youku/widget/TudouModuleH5;->access$400(Lcom/youku/widget/TudouModuleH5;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v3, v7}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 334
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "prompt"

    const-string v8, "html"

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v7, "page"

    iget-object v8, p0, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v8}, Lcom/youku/widget/TudouModuleH5;->access$500(Lcom/youku/widget/TudouModuleH5;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v7, "cmsname"

    iget-object v8, v3, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v7, "t1.h5_html.click.$moduleid_1"

    invoke-static {v7, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "skipInfo":Lcom/youku/vo/SkipInfo;
    .end local v4    # "strs":[Ljava/lang/String;
    .end local v6    # "x":I
    :cond_2
    :goto_1
    return v10

    .line 340
    :catch_0
    move-exception v7

    goto :goto_1
.end method
