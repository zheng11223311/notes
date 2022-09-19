.class public Lcom/alibaba/sdk/android/webview/BridgeWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/webview/BridgeWebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/webview/BridgeWebChromeClient;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8

    const-string v0, "hv_hybrid:"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/alibaba/sdk/android/webview/TaeWebView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/alibaba/sdk/android/webview/TaeWebView;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    const-string v0, "?"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    new-instance v4, Lcom/alibaba/sdk/android/webview/e;

    invoke-direct {v4}, Lcom/alibaba/sdk/android/webview/e;-><init>()V

    iput-object v3, v4, Lcom/alibaba/sdk/android/webview/e;->b:Ljava/lang/String;

    iput-object v1, v4, Lcom/alibaba/sdk/android/webview/e;->a:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/sdk/android/webview/e;->c:Ljava/lang/String;

    iput v2, v4, Lcom/alibaba/sdk/android/webview/e;->d:I

    new-instance v1, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;-><init>()V

    iget v0, v4, Lcom/alibaba/sdk/android/webview/e;->d:I

    iput v0, v1, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;->requestId:I

    iput-object p1, v1, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;->webView:Landroid/webkit/WebView;

    iget-object v0, v4, Lcom/alibaba/sdk/android/webview/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/webview/TaeWebView;->getBridgeObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v0, 0x2710

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v4, Lcom/alibaba/sdk/android/webview/e;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sget-object v2, Lcom/alibaba/sdk/android/webview/BridgeWebChromeClient;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;)V

    iget v2, v0, Lcom/alibaba/sdk/android/message/Message;->code:I

    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;->onFailure(ILjava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, v4, Lcom/alibaba/sdk/android/webview/e;->b:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const-class v0, Lcom/alibaba/sdk/android/webview/BridgeMethod;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    :try_start_1
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v5, v0

    const/4 v6, 0x1

    iget-object v0, v4, Lcom/alibaba/sdk/android/webview/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "{}"

    :goto_2
    aput-object v0, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-string v0, ""

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x3b7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v4, Lcom/alibaba/sdk/android/webview/e;->a:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v4, v4, Lcom/alibaba/sdk/android/webview/e;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/webview/BridgeWebChromeClient;->a:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    iget v0, v2, Lcom/alibaba/sdk/android/message/Message;->code:I

    iget-object v2, v2, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;->onFailure(ILjava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    :try_start_2
    iget-object v0, v4, Lcom/alibaba/sdk/android/webview/e;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v2, 0x271a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/webview/BridgeWebChromeClient;->a:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    iget v0, v2, Lcom/alibaba/sdk/android/message/Message;->code:I

    iget-object v2, v2, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;->onFailure(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    const/16 v0, 0x3b8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, v4, Lcom/alibaba/sdk/android/webview/e;->a:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, v4, Lcom/alibaba/sdk/android/webview/e;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    sget-object v2, Lcom/alibaba/sdk/android/webview/BridgeWebChromeClient;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;)V

    iget v2, v0, Lcom/alibaba/sdk/android/message/Message;->code:I

    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/webview/BridgeCallbackContext;->onFailure(ILjava/lang/String;)V

    goto :goto_3
.end method
