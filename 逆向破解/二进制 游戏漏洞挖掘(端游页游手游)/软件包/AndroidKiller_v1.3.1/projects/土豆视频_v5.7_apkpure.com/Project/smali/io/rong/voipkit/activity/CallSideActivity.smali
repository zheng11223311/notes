.class public Lio/rong/voipkit/activity/CallSideActivity;
.super Lio/rong/voipkit/activity/BaseActivity;
.source "CallSideActivity.java"


# static fields
.field public static final STARTVOIP_ERROR:I = 0x1

.field public static final STARTVOIP_SUCCESS:I

.field private static isActiviyShow:Z


# instance fields
.field connectedHandler:Landroid/os/Handler;

.field delayHandler:Landroid/os/Handler;

.field finishActivity:Ljava/lang/Runnable;

.field private hands_off:Landroid/widget/ImageView;

.field private maskView:Landroid/view/View;

.field private myselfName:Ljava/lang/String;

.field private peerUserName:Ljava/lang/String;

.field private sound_off:Landroid/widget/ImageView;

.field private token:Ljava/lang/String;

.field private userName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lio/rong/voipkit/activity/CallSideActivity;->isActiviyShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lio/rong/voipkit/activity/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Lio/rong/voipkit/activity/CallSideActivity$1;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/CallSideActivity$1;-><init>(Lio/rong/voipkit/activity/CallSideActivity;)V

    iput-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->connectedHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lio/rong/voipkit/activity/CallSideActivity;->isActiviyShow:Z

    return v0
.end method

.method static synthetic access$100(Lio/rong/voipkit/activity/CallSideActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CallSideActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->userName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/voipkit/activity/CallSideActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CallSideActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/voipkit/activity/CallSideActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CallSideActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/voipkit/activity/CallSideActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CallSideActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->myselfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lio/rong/voipkit/activity/CallSideActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CallSideActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->sound_off:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/voipkit/activity/CallSideActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lio/rong/voipkit/activity/CallSideActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->hands_off:Landroid/widget/ImageView;

    return-object v0
.end method

.method private connectVoIPServer_call()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/rong/voipkit/activity/CallSideActivity$3;

    invoke-direct {v1, p0}, Lio/rong/voipkit/activity/CallSideActivity$3;-><init>(Lio/rong/voipkit/activity/CallSideActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method

.method private delayTimesFinish()V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->delayHandler:Landroid/os/Handler;

    .line 233
    new-instance v0, Lio/rong/voipkit/activity/CallSideActivity$4;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/CallSideActivity$4;-><init>(Lio/rong/voipkit/activity/CallSideActivity;)V

    iput-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->finishActivity:Ljava/lang/Runnable;

    .line 251
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->delayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->finishActivity:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    return-void
.end method

.method private reciveIntentData()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CallSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->appId:Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->token:Ljava/lang/String;

    .line 160
    const-string v1, "mySelfId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->mySelfId:Ljava/lang/String;

    .line 163
    const-string v1, "peerUId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    .line 165
    const-string v1, "peerUserPhoteUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerUserPhoteUri:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public CalledAcceptCall()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lio/rong/voipkit/activity/CallSideActivity$5;

    invoke-direct {v0, p0}, Lio/rong/voipkit/activity/CallSideActivity$5;-><init>(Lio/rong/voipkit/activity/CallSideActivity;)V

    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/CallSideActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method public doFinishChat(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 212
    const-string v1, "aff"

    const-string v2, "======================finishChat=================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lio/rong/voipkit/message/VoIPFinishMessage;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 215
    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/CallSideActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V

    .line 217
    invoke-virtual {p0}, Lio/rong/voipkit/activity/CallSideActivity;->finish()V

    .line 218
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lio/rong/voipkit/message/VoIPFinishMessage;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "vfm":Lio/rong/voipkit/message/VoIPFinishMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/voipkit/message/VoIPFinishMessage;->setFinish_state(I)V

    .line 224
    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/CallSideActivity;->sendMsg(Lio/rong/imlib/model/MessageContent;)V

    .line 225
    invoke-super {p0}, Lio/rong/voipkit/activity/BaseActivity;->onBackPressed()V

    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lio/rong/voipkit/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v1, Lio/rong/imkit/R$layout;->rc_callside_layout:I

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CallSideActivity;->setContentView(I)V

    .line 78
    sget v1, Lio/rong/imkit/R$id;->user_name:I

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CallSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->userName:Landroid/widget/TextView;

    .line 79
    sget v1, Lio/rong/imkit/R$id;->sound_off_id:I

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CallSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->sound_off:Landroid/widget/ImageView;

    .line 80
    sget v1, Lio/rong/imkit/R$id;->hands_off_id:I

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CallSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->hands_off:Landroid/widget/ImageView;

    .line 81
    sget v1, Lio/rong/imkit/R$id;->user_photo:I

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CallSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->user_photo:Lio/rong/imkit/widget/AsyncImageView;

    .line 83
    sget v1, Lio/rong/imkit/R$id;->calling_state:I

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CallSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->calling_state:Landroid/widget/TextView;

    .line 84
    sget v1, Lio/rong/imkit/R$id;->mask_layout:I

    invoke-virtual {p0, v1}, Lio/rong/voipkit/activity/CallSideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->maskView:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lio/rong/voipkit/activity/CallSideActivity;->reciveIntentData()V

    .line 88
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v1

    iget-object v2, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    .line 90
    .local v0, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->user_photo:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v2, Lcom/sea_monster/resource/Resource;

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 99
    .end local v0    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_0
    invoke-direct {p0}, Lio/rong/voipkit/activity/CallSideActivity;->delayTimesFinish()V

    .line 100
    const-string v1, "fff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===================called====================mode=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity;->mySelfId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/voipkit/activity/CallSideActivity;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    sput-boolean v0, Lio/rong/voipkit/activity/CallSideActivity;->isActiviyShow:Z

    .line 282
    invoke-super {p0}, Lio/rong/voipkit/activity/BaseActivity;->onDestroy()V

    .line 283
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->delayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/voipkit/activity/CallSideActivity;->finishActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method public onEvent(Lio/rong/imlib/model/UserInfo;)V
    .locals 2
    .param p1, "userInfoArg"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->peerid:Ljava/lang/String;

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lio/rong/voipkit/activity/CallSideActivity$2;

    invoke-direct {v0, p0, p1}, Lio/rong/voipkit/activity/CallSideActivity$2;-><init>(Lio/rong/voipkit/activity/CallSideActivity;Lio/rong/imlib/model/UserInfo;)V

    invoke-virtual {p0, v0}, Lio/rong/voipkit/activity/CallSideActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onEventBackgroundThread(Lio/rong/voipkit/model/VOIPCallBackObject;)V
    .locals 1
    .param p1, "voipCallBackObject"    # Lio/rong/voipkit/model/VOIPCallBackObject;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/voipkit/model/VOIPCallBackObject;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lio/rong/voipkit/model/VOIPCallBackObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/voipkit/model/VOIPCallBackObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/rong/imlib/RongIMClient$ErrorCode;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lio/rong/voipkit/model/VOIPCallBackObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/RongIMClient$ErrorCode;

    .line 137
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lio/rong/voipkit/activity/BaseActivity;->onResume()V

    .line 151
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/voipkit/activity/CallSideActivity;->isActiviyShow:Z

    .line 152
    invoke-direct {p0}, Lio/rong/voipkit/activity/CallSideActivity;->connectVoIPServer_call()V

    .line 153
    return-void
.end method

.method protected showMaskLayout(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->maskView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity;->maskView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
