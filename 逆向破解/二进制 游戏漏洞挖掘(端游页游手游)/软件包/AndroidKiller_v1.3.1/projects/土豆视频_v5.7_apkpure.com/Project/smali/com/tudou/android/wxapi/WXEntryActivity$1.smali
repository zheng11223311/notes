.class Lcom/tudou/android/wxapi/WXEntryActivity$1;
.super Landroid/os/Handler;
.source "WXEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/wxapi/WXEntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/tudou/android/wxapi/WXEntryActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/tudou/android/wxapi/WXEntryActivity$1;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 341
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 342
    :cond_0
    return-void

    .line 326
    :sswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 329
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity$1;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-static {v0}, Lcom/tudou/android/wxapi/WXEntryActivity;->access$000(Lcom/tudou/android/wxapi/WXEntryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity$1;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 335
    :sswitch_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 336
    iget-object v0, p0, Lcom/tudou/android/wxapi/WXEntryActivity$1;->this$0:Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/tudou/android/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
