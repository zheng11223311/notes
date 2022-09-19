.class Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;
.super Landroid/os/Handler;
.source "IntegratedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/webview/IntegratedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOutHanlder"
.end annotation


# static fields
.field public static final MESSAGE_TIME_OUT:I = 0x1f4


# instance fields
.field final synthetic this$0:Lcom/tudou/webview/IntegratedWebView;


# direct methods
.method constructor <init>(Lcom/tudou/webview/IntegratedWebView;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 359
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$700(Lcom/tudou/webview/IntegratedWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$800(Lcom/tudou/webview/IntegratedWebView;)Lcom/youku/widget/HintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-static {v0}, Lcom/tudou/webview/IntegratedWebView;->access$800(Lcom/tudou/webview/IntegratedWebView;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 363
    :cond_0
    return-void
.end method
