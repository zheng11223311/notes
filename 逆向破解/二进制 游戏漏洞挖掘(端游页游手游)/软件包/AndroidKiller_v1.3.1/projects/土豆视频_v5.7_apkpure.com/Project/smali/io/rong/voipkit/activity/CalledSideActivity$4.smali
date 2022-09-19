.class Lio/rong/voipkit/activity/CalledSideActivity$4;
.super Ljava/lang/Object;
.source "CalledSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CalledSideActivity;->connectVoIPServer_accept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/voipkit/activity/CalledSideActivity;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CalledSideActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 175
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {}, Lio/rong/voiplib/utils/VoIPUtil;->getPort()I

    move-result v1

    iput v1, v0, Lio/rong/voipkit/activity/CalledSideActivity;->localPort:I

    .line 176
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v0, v0, Lio/rong/voipkit/activity/CalledSideActivity;->appId:Ljava/lang/String;

    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v1, v1, Lio/rong/voipkit/activity/CalledSideActivity;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v2, v2, Lio/rong/voipkit/activity/CalledSideActivity;->mySelfId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget-object v3, v3, Lio/rong/voipkit/activity/CalledSideActivity;->remoteIp:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget v4, v4, Lio/rong/voipkit/activity/CalledSideActivity;->remotePort:I

    iget-object v5, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    iget v5, v5, Lio/rong/voipkit/activity/CalledSideActivity;->localPort:I

    iget-object v6, p0, Lio/rong/voipkit/activity/CalledSideActivity$4;->this$0:Lio/rong/voipkit/activity/CalledSideActivity;

    invoke-static {v6}, Lio/rong/voipkit/activity/CalledSideActivity;->access$300(Lio/rong/voipkit/activity/CalledSideActivity;)Lio/rong/voipkit/message/VoIPCallMessage;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/voipkit/message/VoIPCallMessage;->getRemoteControlPort()I

    move-result v6

    new-instance v7, Lio/rong/voipkit/activity/CalledSideActivity$4$1;

    invoke-direct {v7, p0}, Lio/rong/voipkit/activity/CalledSideActivity$4$1;-><init>(Lio/rong/voipkit/activity/CalledSideActivity$4;)V

    invoke-static/range {v0 .. v7}, Lio/rong/voiplib/RongIMVoIP;->acceptVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILio/rong/voiplib/NativeObject$AcceptVoIPCallback;)V

    .line 192
    return-void
.end method
