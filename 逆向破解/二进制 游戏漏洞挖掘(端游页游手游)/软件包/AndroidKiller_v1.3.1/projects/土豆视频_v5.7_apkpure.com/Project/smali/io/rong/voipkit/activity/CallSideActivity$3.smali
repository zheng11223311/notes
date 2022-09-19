.class Lio/rong/voipkit/activity/CallSideActivity$3;
.super Ljava/lang/Object;
.source "CallSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CallSideActivity;->connectVoIPServer_call()V
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
    .line 169
    iput-object p1, p0, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 172
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-static {}, Lio/rong/voiplib/utils/VoIPUtil;->getPort()I

    move-result v1

    iput v1, v0, Lio/rong/voipkit/activity/CallSideActivity;->localPort:I

    .line 173
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/CallSideActivity;->appId:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-static {v1}, Lio/rong/voipkit/activity/CallSideActivity;->access$200(Lio/rong/voipkit/activity/CallSideActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v2, v2, Lio/rong/voipkit/activity/CallSideActivity;->mySelfId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget-object v3, v3, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/voipkit/activity/CallSideActivity$3;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    iget v4, v4, Lio/rong/voipkit/activity/CallSideActivity;->localPort:I

    new-instance v5, Lio/rong/voipkit/activity/CallSideActivity$3$1;

    invoke-direct {v5, p0}, Lio/rong/voipkit/activity/CallSideActivity$3$1;-><init>(Lio/rong/voipkit/activity/CallSideActivity$3;)V

    invoke-static/range {v0 .. v5}, Lio/rong/voiplib/RongIMVoIP;->startVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/rong/voiplib/NativeObject$StartVoIPCallback;)V

    .line 204
    return-void
.end method
