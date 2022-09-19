.class Lio/rong/voipkit/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/BaseActivity;->onEventBackgroundThread(Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;)V
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
    .line 338
    iput-object p1, p0, Lio/rong/voipkit/activity/BaseActivity$3;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lio/rong/voipkit/activity/BaseActivity$3;->this$0:Lio/rong/voipkit/activity/BaseActivity;

    check-cast v0, Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CallSideActivity;->CalledAcceptCall()V

    .line 342
    return-void
.end method
