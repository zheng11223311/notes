.class Lcom/tudou/ui/activity/WebViewActivity$7;
.super Ljava/util/TimerTask;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WebViewActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WebViewActivity;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$7;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity$7;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WebViewActivity;->access$000(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 341
    const-string/jumbo v1, "testTimeout"

    const-string/jumbo v2, "timeout..........."

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 343
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 344
    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity$7;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WebViewActivity;->access$500(Lcom/tudou/ui/activity/WebViewActivity;)V

    .line 345
    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity$7;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WebViewActivity;->access$800(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
