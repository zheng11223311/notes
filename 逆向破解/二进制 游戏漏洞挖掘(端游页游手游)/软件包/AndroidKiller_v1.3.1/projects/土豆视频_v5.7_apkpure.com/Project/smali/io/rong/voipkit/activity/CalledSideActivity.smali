.class public Lio/rong/voipkit/activity/CalledSideActivity;
.super Lio/rong/voipkit/activity/BaseActivity;
.source "CalledSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;
    }
.end annotation


# static fields
.field private static final MESSAGE_VOIPCALL:I = 0x3fc

.field private static final MESSAGE_VOIPFINISH:I = 0x3fd


# instance fields
.field acceptVoIPHandler:Landroid/os/Handler;

.field private call_finish:Landroid/widget/Button;

.field connectedHandler:Landroid/os/Handler;

.field doPushRecevieHandler:Landroid/os/Handler;

.field private fromUserNameByPush:Ljava/lang/String;

.field private hands_off:Landroid/widget/ImageView;

.field private isPushJumpHere:Z

.field private mRongIMClient:Lio/rong/imlib/RongIMClient;

.field private maskView:Landroid/view/View;

.field private sound_off:Landroid/widget/ImageView;

.field private user_name:Landroid/widget/TextView;

.field private vioce_control_container:Landroid/widget/LinearLayout;

.field private voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

.field private voipCalledLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/voipkit/activity/BaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->mRongIMClient:Lio/rong/imlib/RongIMClient;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->fromUserNameByPush:Ljava/lang/String;

    .line 54
    new-instance v0, Lio/rong/voipkit/activity/CalledSideActivity$1;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/CalledSideActivity$1;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->acceptVoIPHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lio/rong/voipkit/activity/CalledSideActivity$3;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/CalledSideActivity$3;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->connectedHandler:Landroid/os/Handler;

    .line 350
    new-instance v0, Lio/rong/voipkit/activity/CalledSideActivity$7;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/CalledSideActivity$7;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->doPushRecevieHandler:Landroid/os/Handler;

    .line 432
    return-void
.end method

.method static synthetic access$000(Lio/rong/voipkit/activity/CalledSideActivity;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CalledSideActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    return v0
.end method

.method static synthetic access$100(Lio/rong/voipkit/activity/CalledSideActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/voipkit/activity/CalledSideActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->switchView()V

    return-void
.end method

.method static synthetic access$200(Lio/rong/voipkit/activity/CalledSideActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CalledSideActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->user_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/voipkit/activity/CalledSideActivity;)Lio/rong/voipkit/message/VoIPCallMessage;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CalledSideActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    return-object v0
.end method

.method static synthetic access$302(Lio/rong/voipkit/activity/CalledSideActivity;Lio/rong/voipkit/message/VoIPCallMessage;)Lio/rong/voipkit/message/VoIPCallMessage;
    .locals 0
    .param p0, "x0"    # Lio/rong/voipkit/activity/CalledSideActivity;
    .param p1, "x1"    # Lio/rong/voipkit/message/VoIPCallMessage;

    .prologue
    .line 38
    iput-object p1, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    return-object p1
.end method

.method static synthetic access$400(Lio/rong/voipkit/activity/CalledSideActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/voipkit/activity/CalledSideActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->initParam()V

    return-void
.end method

.method static synthetic access$500(Lio/rong/voipkit/activity/CalledSideActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CalledSideActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->fromUserNameByPush:Ljava/lang/String;

    return-object v0
.end method

.method private connectVoIPServer_accept()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/rong/voipkit/activity/CalledSideActivity$4;

    invoke-direct {v1, p0}, Lio/rong/voipkit/activity/CalledSideActivity$4;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    return-void
.end method

.method private initParam()V
    .locals 3

    .prologue
    .line 139
    const-string v0, "aff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=================initParam==============up==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-virtual {v2}, Lio/rong/voipkit/message/VoIPCallMessage;->getToId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-virtual {v0}, Lio/rong/voipkit/message/VoIPCallMessage;->getToId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->mySelfId:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-virtual {v0}, Lio/rong/voipkit/message/VoIPCallMessage;->getFromId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-virtual {v0}, Lio/rong/voipkit/message/VoIPCallMessage;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->remoteIp:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-virtual {v0}, Lio/rong/voipkit/message/VoIPCallMessage;->getRemoteTransferPort()I

    move-result v0

    iput v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->remotePort:I

    .line 147
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-virtual {v0}, Lio/rong/voipkit/message/VoIPCallMessage;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->sessionId:Ljava/lang/String;

    .line 149
    const-string v0, "fff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============================mySelfId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->mySelfId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==peerid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==un="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->user_name:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "===remoteIp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->remoteIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==remotePort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->remotePort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=--="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    invoke-virtual {v2}, Lio/rong/voipkit/message/VoIPCallMessage;->getFromUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private switchView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->call_finish:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->vioce_control_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCalledLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->sound_off:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity;->hands_off:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->enableHandOffAndSoundOff(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 315
    return-void
.end method


# virtual methods
.method public doFinishChat(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 299
    new-instance v0, Lio/rong/voipkit/message/VoIPFinishMessage;

    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 301
    iget-boolean v1, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/CalledSideActivity;->sendFinishMessage(Lio/rong/imlib/model/MessageContent;)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/CalledSideActivity;->sendMessageByPushJump(Lio/rong/imlib/model/MessageContent;)V

    .line 305
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->finish()V

    goto :goto_0
.end method

.method public doPush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->init(Landroid/content/Context;)V

    .line 324
    :try_start_0
    new-instance v1, Lio/rong/voipkit/activity/CalledSideActivity$6;

    invoke-direct {v1, p0}, Lio/rong/voipkit/activity/CalledSideActivity$6;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    invoke-static {p2, v1}, Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity;->mRongIMClient:Lio/rong/imlib/RongIMClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doRefuse(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 223
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    if-nez v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 226
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->finish()V

    .line 242
    :goto_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v1, Lio/rong/voipkit/message/VoIPFinishMessage;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    invoke-virtual {v1, v4}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 235
    iget-boolean v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    if-nez v2, :cond_1

    .line 236
    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->sendFinishMessage(Lio/rong/imlib/model/MessageContent;)V

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->sendMessageByPushJump(Lio/rong/imlib/model/MessageContent;)V

    .line 240
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->finish()V

    goto :goto_1
.end method

.method public doYes(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v1, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_network_exception:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 204
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->finish()V

    .line 216
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "fff"

    const-string v2, "====================doYes======================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->releaseRingtong()V

    .line 215
    invoke-direct {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->connectVoIPServer_accept()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 276
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    if-nez v2, :cond_0

    .line 277
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 279
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->finish()V

    .line 293
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v1, Lio/rong/voipkit/message/VoIPFinishMessage;

    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 288
    iget-boolean v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    if-nez v2, :cond_1

    .line 289
    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V

    .line 292
    :goto_2
    invoke-super {p0}, Lio/rong/voipkit/activity/BaseActivity;->onBackPressed()V

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->sendMessageByPushJump(Lio/rong/imlib/model/MessageContent;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1}, Lio/rong/voipkit/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v3, Lio/rong/imkit/R$layout;->rc_calledside_layout:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->setContentView(I)V

    .line 73
    sget v3, Lio/rong/imkit/R$id;->call_finish:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->call_finish:Landroid/widget/Button;

    .line 74
    sget v3, Lio/rong/imkit/R$id;->vioce_control_container:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->vioce_control_container:Landroid/widget/LinearLayout;

    .line 75
    sget v3, Lio/rong/imkit/R$id;->rc_voip_called_layout:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCalledLayout:Landroid/widget/LinearLayout;

    .line 76
    sget v3, Lio/rong/imkit/R$id;->user_name:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->user_name:Landroid/widget/TextView;

    .line 77
    sget v3, Lio/rong/imkit/R$id;->user_photo:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->user_photo:Lio/rong/imkit/widget/AsyncImageView;

    .line 78
    sget v3, Lio/rong/imkit/R$id;->calling_state:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->calling_state:Landroid/widget/TextView;

    .line 80
    sget v3, Lio/rong/imkit/R$id;->sound_off_id:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->sound_off:Landroid/widget/ImageView;

    .line 81
    sget v3, Lio/rong/imkit/R$id;->hands_off_id:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->hands_off:Landroid/widget/ImageView;

    .line 82
    sget v3, Lio/rong/imkit/R$id;->mask_layout:I

    invoke-virtual {p0, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->maskView:Landroid/view/View;

    .line 84
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "appId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "push"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    const-string v3, "appId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->appId:Ljava/lang/String;

    .line 89
    const-string v3, "RONG_SDK"

    invoke-virtual {p0, v3, v6}, Lio/rong/voipkit/activity/CalledSideActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "token_value"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "token":Ljava/lang/String;
    const-string v3, "fromUserPhoteUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerUserPhoteUri:Ljava/lang/String;

    .line 91
    const-string v3, "fromUserName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->fromUserNameByPush:Ljava/lang/String;

    .line 92
    const-string v3, "fff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===================doPush=====================ak="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/rong/voipkit/activity/CalledSideActivity;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==fromUserName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/rong/voipkit/activity/CalledSideActivity;->fromUserNameByPush:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    .line 94
    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->appId:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lio/rong/voipkit/activity/CalledSideActivity;->doPush(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 107
    const/16 v3, 0xbc

    invoke-virtual {p0, v6, v3}, Lio/rong/voipkit/activity/CalledSideActivity;->playerRingtone(II)V

    .line 109
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v3

    iget-object v4, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/UserInfo;

    .line 111
    .local v2, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v2, :cond_2

    .line 112
    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->user_name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->user_photo:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v4, Lcom/sea_monster/resource/Resource;

    invoke-virtual {v2}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 116
    .end local v2    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_2
    return-void

    .line 96
    :cond_3
    iput-boolean v6, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    .line 97
    const-string v3, "appId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->appId:Ljava/lang/String;

    .line 98
    const-string v3, "VoIPCallMessage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lio/rong/voipkit/message/VoIPCallMessage;

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    .line 99
    const-string v3, "peerUserPhoteUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerUserPhoteUri:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lio/rong/voipkit/activity/CalledSideActivity;->voipCallMessage:Lio/rong/voipkit/message/VoIPCallMessage;

    if-eqz v3, :cond_0

    .line 101
    invoke-direct {p0}, Lio/rong/voipkit/activity/CalledSideActivity;->initParam()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Lio/rong/voipkit/activity/BaseActivity;->onDestroy()V

    .line 449
    iget-boolean v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->isPushJumpHere:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 451
    :cond_0
    return-void
.end method

.method public onEvent(Lio/rong/imlib/model/UserInfo;)V
    .locals 2
    .param p1, "userInfoArg"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->peerid:Ljava/lang/String;

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lio/rong/voipkit/activity/CalledSideActivity$2;

    invoke-direct {v0, p0, p1}, Lio/rong/voipkit/activity/CalledSideActivity$2;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;Lio/rong/imlib/model/UserInfo;)V

    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/CalledSideActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    :cond_0
    return-void
.end method

.method public registerReceiveMessage()V
    .locals 3

    .prologue
    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 382
    .local v0, "startTime":J
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->mRongIMClient:Lio/rong/imlib/RongIMClient;

    new-instance v2, Lio/rong/voipkit/activity/CalledSideActivity$8;

    invoke-direct {v2, p0, v0, v1}, Lio/rong/voipkit/activity/CalledSideActivity$8;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;J)V

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V

    .line 406
    iget-object v2, p0, Lio/rong/voipkit/activity/CalledSideActivity;->mRongIMClient:Lio/rong/imlib/RongIMClient;

    new-instance v2, Lio/rong/voipkit/activity/CalledSideActivity$9;

    invoke-direct {v2, p0}, Lio/rong/voipkit/activity/CalledSideActivity$9;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V

    .line 415
    return-void
.end method

.method protected sendFinishMessage(Lio/rong/imlib/model/MessageContent;)V
    .locals 11
    .param p1, "messageContent"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    const/4 v4, 0x0

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "targetId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/MessageTag;

    .line 247
    .local v8, "msgTag":Lio/rong/imlib/MessageTag;
    invoke-interface {v8}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v9

    .local v9, "objectName":Ljava/lang/String;
    move-object v10, p1

    .line 248
    check-cast v10, Lio/rong/voipkit/message/VoIPFinishMessage;

    .line 249
    .local v10, "voIPFinishMessage":Lio/rong/voipkit/message/VoIPFinishMessage;
    invoke-virtual {v10}, Lio/rong/voipkit/message/VoIPFinishMessage;->getToId()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    new-instance v6, Lio/rong/voipkit/activity/CalledSideActivity$5;

    invoke-direct {v6, p0, v9}, Lio/rong/voipkit/activity/CalledSideActivity$5;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;Ljava/lang/String;)V

    move-object v3, p1

    move-object v5, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 271
    return-void
.end method

.method public sendMessageByPushJump(Lio/rong/imlib/model/MessageContent;)V
    .locals 16
    .param p1, "mc"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 419
    const-string v1, "aaa"

    const-string v2, "============voip===sendmessage=========="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p1

    instance-of v1, v0, Lio/rong/voipkit/message/VoIPCallMessage;

    if-eqz v1, :cond_1

    move-object/from16 v4, p1

    .line 421
    check-cast v4, Lio/rong/voipkit/message/VoIPCallMessage;

    .line 422
    .local v4, "vcm":Lio/rong/voipkit/message/VoIPCallMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/rong/voipkit/activity/CalledSideActivity;->mRongIMClient:Lio/rong/imlib/RongIMClient;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4}, Lio/rong/voipkit/message/VoIPCallMessage;->getToId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    .line 430
    .end local v4    # "vcm":Lio/rong/voipkit/message/VoIPCallMessage;
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lio/rong/voipkit/message/VoIPAcceptMessage;

    if-eqz v1, :cond_2

    move-object/from16 v8, p1

    .line 424
    check-cast v8, Lio/rong/voipkit/message/VoIPAcceptMessage;

    .line 425
    .local v8, "vam":Lio/rong/voipkit/message/VoIPAcceptMessage;
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/voipkit/activity/CalledSideActivity;->mRongIMClient:Lio/rong/imlib/RongIMClient;

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v8}, Lio/rong/voipkit/message/VoIPAcceptMessage;->getToId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    invoke-virtual/range {v5 .. v11}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    goto :goto_0

    .line 426
    .end local v8    # "vam":Lio/rong/voipkit/message/VoIPAcceptMessage;
    :cond_2
    move-object/from16 v0, p1

    instance-of v1, v0, Lio/rong/voipkit/message/VoIPFinishMessage;

    if-eqz v1, :cond_0

    move-object/from16 v12, p1

    .line 427
    check-cast v12, Lio/rong/voipkit/message/VoIPFinishMessage;

    .line 428
    .local v12, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    move-object/from16 v0, p0

    iget-object v9, v0, Lio/rong/voipkit/activity/CalledSideActivity;->mRongIMClient:Lio/rong/imlib/RongIMClient;

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12}, Lio/rong/voipkit/message/VoIPFinishMessage;->getToId()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;

    invoke-direct/range {v15 .. v16}, Lio/rong/voipkit/activity/CalledSideActivity$MySendMessageCallback;-><init>(Lio/rong/voipkit/activity/CalledSideActivity;)V

    invoke-virtual/range {v9 .. v15}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    goto :goto_0
.end method

.method protected showMaskLayout(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->maskView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lio/rong/voipkit/activity/CalledSideActivity;->maskView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
