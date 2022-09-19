.class Lio/rong/voipkit/activity/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/BaseActivity;->startCountTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/BaseActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lio/rong/voipkit/activity/BaseActivity$5;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 443
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity$5;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lio/rong/voipkit/activity/BaseActivity$5;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iget-wide v8, v8, Lio/rong/voipkit/activity/BaseActivity;->startTime:J

    sub-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lio/rong/voipkit/activity/BaseActivity;->access$000(Lio/rong/voipkit/activity/BaseActivity;J)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity$5;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/BaseActivity;->calling_state:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 448
    .local v4, "now":J
    rem-long v6, v4, v10

    sub-long v6, v10, v6

    add-long v2, v4, v6

    .line 449
    .local v2, "next":J
    iget-object v1, p0, Lio/rong/voipkit/activity/BaseActivity$5;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-static {v1}, Lio/rong/voipkit/activity/BaseActivity;->access$200(Lio/rong/voipkit/activity/BaseActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v6, p0, Lio/rong/voipkit/activity/BaseActivity$5;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-static {v6}, Lio/rong/voipkit/activity/BaseActivity;->access$100(Lio/rong/voipkit/activity/BaseActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 450
    return-void
.end method
