.class Lio/rong/voipkit/activity/CallSideActivity$5;
.super Ljava/lang/Object;
.source "CallSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CallSideActivity;->CalledAcceptCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CallSideActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CallSideActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    const-string v0, "effaaa"

    const-string v1, "=========================\u88ab\u53eb\u65b9\u63a5\u53d7\u4e86\u547c\u53eb\u8bf7\u6c42=============================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v1}, Lio/rong/voipkit/activity/CallSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_called_accept:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/CallSideActivity;->delayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CallSideActivity;->finishActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CallSideActivity;->startCountTime()V

    .line 268
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CallSideActivity;->releaseRingtong()V

    .line 270
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CallSideActivity;->createVoIP()V

    .line 272
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-static {v1}, Lio/rong/voipkit/activity/CallSideActivity;->access$500(Lio/rong/voipkit/activity/CallSideActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$5;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-static {v2}, Lio/rong/voipkit/activity/CallSideActivity;->access$600(Lio/rong/voipkit/activity/CallSideActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/voipkit/activity/CallSideActivity;->enableHandOffAndSoundOff(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 274
    return-void
.end method
