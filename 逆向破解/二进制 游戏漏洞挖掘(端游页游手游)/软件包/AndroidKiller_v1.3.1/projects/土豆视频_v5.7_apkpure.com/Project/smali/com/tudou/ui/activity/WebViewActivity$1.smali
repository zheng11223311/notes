.class Lcom/tudou/ui/activity/WebViewActivity$1;
.super Landroid/os/Handler;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/WebViewActivity;
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
    .line 57
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$1;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 65
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$1;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$000(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$1;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$100(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
