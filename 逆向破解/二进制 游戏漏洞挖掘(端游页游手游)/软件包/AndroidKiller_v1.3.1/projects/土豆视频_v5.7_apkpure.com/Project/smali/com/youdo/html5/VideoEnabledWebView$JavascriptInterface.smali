.class public Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/html5/VideoEnabledWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/html5/VideoEnabledWebView;


# direct methods
.method public constructor <init>(Lcom/youdo/html5/VideoEnabledWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;->this$0:Lcom/youdo/html5/VideoEnabledWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyVideoEnd()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$1;

    invoke-direct {v1, p0}, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$1;-><init>(Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyVideoLowProfile()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$2;

    invoke-direct {v1, p0}, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface$2;-><init>(Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
