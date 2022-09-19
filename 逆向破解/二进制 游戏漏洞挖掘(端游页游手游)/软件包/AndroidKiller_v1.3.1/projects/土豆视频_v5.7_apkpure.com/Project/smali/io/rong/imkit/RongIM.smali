.class public Lio/rong/imkit/RongIM;
.super Ljava/lang/Object;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;,
        Lio/rong/imkit/RongIM$SentMessageErrorCode;,
        Lio/rong/imkit/RongIM$OnSendMessageListener;,
        Lio/rong/imkit/RongIM$OnSelectMemberListener;,
        Lio/rong/imkit/RongIM$GroupInfoProvider;,
        Lio/rong/imkit/RongIM$GroupUserInfoProvider;,
        Lio/rong/imkit/RongIM$UserInfoProvider;,
        Lio/rong/imkit/RongIM$ConversationListBehaviorListener;,
        Lio/rong/imkit/RongIM$ConversationBehaviorListener;,
        Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;,
        Lio/rong/imkit/RongIM$LocationProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentProcessName:Ljava/lang/String;

.field private static mMainProcessName:Ljava/lang/String;

.field private static sRongIM:Lio/rong/imkit/RongIM;


# instance fields
.field private mClientWrapper:Lio/rong/imkit/RongIMClientWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lio/rong/imkit/RongIM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static addInputExtensionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 3
    .param p0, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p1, "providers"    # [Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .prologue
    .line 1182
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :goto_0
    return-void

    .line 1187
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1188
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v1, "registerInputProvider"

    const-string v2, "RongCloud SDK not init"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1192
    :cond_1
    if-nez p1, :cond_2

    .line 1193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1195
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->resetInputExtentionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V

    goto :goto_0
.end method

.method public static connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$ConnectCallback;

    .prologue
    .line 248
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    .line 253
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    invoke-static {p0}, Lio/rong/imkit/RongIM;->saveToken(Ljava/lang/String;)V

    .line 258
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    invoke-static {p0, p1}, Lio/rong/imkit/RongIMClientWrapper;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    iput-object v1, v0, Lio/rong/imkit/RongIM;->mClientWrapper:Lio/rong/imkit/RongIMClientWrapper;

    .line 260
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    goto :goto_0
.end method

.method public static getInstance()Lio/rong/imkit/RongIM;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sput-object p0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    .line 83
    sget-object v1, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lio/rong/imkit/RongIM;

    invoke-direct {v1}, Lio/rong/imkit/RongIM;-><init>()V

    sput-object v1, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    .line 86
    :cond_0
    invoke-static {p0}, Lio/rong/imkit/RongContext;->init(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-static {p0, v1}, Lio/rong/imkit/RongIMClientWrapper;->init(Landroid/content/Context;Lio/rong/imkit/RongContext;)V

    .line 90
    sget-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 91
    invoke-static {p0}, Lio/rong/imkit/utils/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    .line 94
    :cond_1
    sget-object v1, Lio/rong/imkit/RongIM;->mMainProcessName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/rong/imkit/RongIM;->mMainProcessName:Ljava/lang/String;

    .line 97
    :cond_2
    sget-object v1, Lio/rong/imkit/RongIM;->mMainProcessName:Ljava/lang/String;

    sget-object v2, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    :goto_0
    return-void

    .line 100
    :cond_3
    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v2, "init"

    const-string v3, "before init"

    invoke-static {v1, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-boolean v1, Lio/rong/common/Build;->SDK_WITH_VOIP:Z

    if-eqz v1, :cond_4

    .line 104
    :try_start_0
    const-string v1, "io.rong.voipkit.message.VoIPAcceptMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageType(Ljava/lang/Class;)V

    .line 105
    const-string v1, "io.rong.voipkit.message.VoIPCallMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageType(Ljava/lang/Class;)V

    .line 106
    const-string v1, "io.rong.voipkit.message.VoIPFinishMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageType(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_4
    :goto_1
    new-instance v1, Lio/rong/imkit/widget/provider/TextMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 113
    new-instance v1, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 114
    new-instance v1, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 115
    new-instance v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 116
    new-instance v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 117
    new-instance v1, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 118
    new-instance v1, Lio/rong/imkit/widget/provider/RichContentMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/RichContentMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 119
    new-instance v1, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 120
    new-instance v1, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 121
    new-instance v1, Lio/rong/imkit/widget/provider/HandshakeMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/HandshakeMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 122
    new-instance v1, Lio/rong/imkit/widget/provider/UnknownMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/UnknownMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 132
    sput-object p0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    .line 134
    sget-object v1, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lio/rong/imkit/RongIM;

    invoke-direct {v1}, Lio/rong/imkit/RongIM;-><init>()V

    sput-object v1, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    .line 137
    :cond_0
    invoke-static {p0}, Lio/rong/imkit/RongContext;->init(Landroid/content/Context;)V

    .line 139
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lio/rong/imkit/RongIMClientWrapper;->init(Landroid/content/Context;Lio/rong/imkit/RongContext;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 144
    invoke-static {p0}, Lio/rong/imkit/utils/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    .line 147
    :cond_1
    sget-object v1, Lio/rong/imkit/RongIM;->mMainProcessName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/rong/imkit/RongIM;->mMainProcessName:Ljava/lang/String;

    .line 150
    :cond_2
    sget-object v1, Lio/rong/imkit/RongIM;->mMainProcessName:Ljava/lang/String;

    sget-object v2, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    :goto_0
    return-void

    .line 153
    :cond_3
    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v2, "init"

    const-string v3, "before init"

    invoke-static {v1, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-boolean v1, Lio/rong/common/Build;->SDK_WITH_VOIP:Z

    if-eqz v1, :cond_4

    .line 156
    :try_start_0
    const-string v1, "io.rong.voipkit.message.VoIPAcceptMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageType(Ljava/lang/Class;)V

    .line 157
    const-string v1, "io.rong.voipkit.message.VoIPCallMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageType(Ljava/lang/Class;)V

    .line 158
    const-string v1, "io.rong.voipkit.message.VoIPFinishMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageType(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_4
    :goto_1
    new-instance v1, Lio/rong/imkit/widget/provider/TextMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 165
    new-instance v1, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 166
    new-instance v1, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 167
    new-instance v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 168
    new-instance v1, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 169
    new-instance v1, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 170
    new-instance v1, Lio/rong/imkit/widget/provider/RichContentMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/RichContentMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 171
    new-instance v1, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 172
    new-instance v1, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 173
    new-instance v1, Lio/rong/imkit/widget/provider/HandshakeMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/HandshakeMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 174
    new-instance v1, Lio/rong/imkit/widget/provider/UnknownMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/widget/provider/UnknownMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V
    .locals 3
    .param p0, "provider"    # Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    .prologue
    .line 208
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v1, "registerMessageTemplate"

    const-string v2, "RongCloud SDK not init"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    goto :goto_0
.end method

.method public static registerMessageType(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "messageContentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    sget-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v2, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v2, "RONG_SDK"

    const-string v3, "Rong SDK should not be initialized at subprocess"

    invoke-static {v1, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 190
    sget-object v1, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v2, "registerMessageType"

    const-string v3, "RongCloud SDK not init"

    invoke-static {v1, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_1
    :try_start_0
    invoke-static {p0}, Lio/rong/imkit/RongIMClientWrapper;->registerMessageType(Ljava/lang/Class;)V
    :try_end_0
    .catch Lio/rong/imlib/AnnotationNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lio/rong/imlib/AnnotationNotFoundException;
    invoke-virtual {v0}, Lio/rong/imlib/AnnotationNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static resetInputExtensionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 3
    .param p0, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p1, "providers"    # [Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .prologue
    .line 1158
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :goto_0
    return-void

    .line 1163
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1164
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v1, "registerInputProvider"

    const-string v2, "RongCloud SDK not init"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1168
    :cond_1
    if-nez p1, :cond_2

    .line 1169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1171
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->resetInputExtentionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V

    goto :goto_0
.end method

.method private static saveToken(Ljava/lang/String;)V
    .locals 5
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v2, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v3, "rc_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "token_value"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public static setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V
    .locals 3
    .param p0, "listener"    # Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    .prologue
    .line 406
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 411
    const-string v0, "RongIM"

    const-string v1, "RongCloud hasn\'t been init!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V

    goto :goto_0
.end method

.method public static setConversationListBehaviorListener(Lio/rong/imkit/RongIM$ConversationListBehaviorListener;)V
    .locals 3
    .param p0, "listener"    # Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    .prologue
    .line 425
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setConversationListBehaviorListener(Lio/rong/imkit/RongIM$ConversationListBehaviorListener;)V

    goto :goto_0
.end method

.method public static setGroupInfoProvider(Lio/rong/imkit/RongIM$GroupInfoProvider;Z)V
    .locals 3
    .param p0, "groupInfoProvider"    # Lio/rong/imkit/RongIM$GroupInfoProvider;
    .param p1, "isCacheGroupInfo"    # Z

    .prologue
    .line 665
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 671
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->setGetGroupInfoProvider(Lio/rong/imkit/RongIM$GroupInfoProvider;Z)V

    goto :goto_0
.end method

.method public static setGroupUserInfoProvider(Lio/rong/imkit/RongIM$GroupUserInfoProvider;Z)V
    .locals 3
    .param p0, "userInfoProvider"    # Lio/rong/imkit/RongIM$GroupUserInfoProvider;
    .param p1, "isCacheUserInfo"    # Z

    .prologue
    .line 642
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 648
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->setGroupUserInfoProvider(Lio/rong/imkit/RongIM$GroupUserInfoProvider;Z)V

    goto :goto_0
.end method

.method public static setLocationProvider(Lio/rong/imkit/RongIM$LocationProvider;)V
    .locals 1
    .param p0, "locationProvider"    # Lio/rong/imkit/RongIM$LocationProvider;

    .prologue
    .line 338
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setLocationProvider(Lio/rong/imkit/RongIM$LocationProvider;)V

    .line 340
    :cond_0
    return-void
.end method

.method public static setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    .prologue
    .line 271
    invoke-static {p0}, Lio/rong/imkit/RongIMClientWrapper;->setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V

    .line 272
    return-void
.end method

.method public static setOnReceivePushMessageListener(Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    .prologue
    .line 1101
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->setOnReceivePushMessageListener(Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;)V

    .line 1102
    return-void
.end method

.method public static setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 3
    .param p0, "provider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    .line 1111
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1117
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v1, "setPrimaryInputProvider"

    const-string v2, "RongCloud SDK not init"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1121
    :cond_1
    if-nez p0, :cond_2

    .line 1122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1124
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto :goto_0
.end method

.method public static setPublicServiceBehaviorListener(Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;)V
    .locals 3
    .param p0, "listener"    # Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    .prologue
    .line 440
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setPublicServiceBehaviorListener(Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;)V

    goto :goto_0
.end method

.method public static setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 3
    .param p0, "provider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    .line 1134
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :goto_0
    return-void

    .line 1139
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1140
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v1, "setSecondaryInputProvider"

    const-string v2, "RongCloud SDK not init"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1144
    :cond_1
    if-nez p0, :cond_2

    .line 1145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1147
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto :goto_0
.end method

.method public static setUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V
    .locals 3
    .param p0, "userInfoProvider"    # Lio/rong/imkit/RongIM$UserInfoProvider;
    .param p1, "isCacheUserInfo"    # Z

    .prologue
    .line 630
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 636
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->setGetUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V

    goto :goto_0
.end method


# virtual methods
.method public createDiscussionChat(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 536
    .local p2, "targetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 537
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 539
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 540
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "targetIds"

    const-string v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "delimiter"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 547
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 548
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imkit/RongIM;->disconnect(Z)V

    .line 347
    return-void
.end method

.method public disconnect(Z)V
    .locals 2
    .param p1, "isReceivePush"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 296
    const-string v0, "disconnect"

    const-string v1, "RongIMClient does not init."

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongIMClientWrapper;->disconnect(Z)V

    goto :goto_0
.end method

.method public enableNewComingMessageIcon(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 1229
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->showNewMessageIcon(Z)V

    .line 1230
    return-void
.end method

.method public enableUnreadMessageIcon(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 1238
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->showUnreadMessageIcon(Z)V

    .line 1239
    return-void
.end method

.method public getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lio/rong/imkit/RongIM;->mClientWrapper:Lio/rong/imkit/RongIMClientWrapper;

    return-object v0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 312
    const-string v0, "disconnect"

    const-string v1, "RongIMClient does not init."

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongIMClientWrapper;->disconnect(Z)V

    goto :goto_0
.end method

.method public refreshDiscussionCache(Lio/rong/imlib/model/Discussion;)V
    .locals 2
    .param p1, "discussion"    # Lio/rong/imlib/model/Discussion;

    .prologue
    .line 683
    if-nez p1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getDiscussionCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public refreshGroupInfoCache(Lio/rong/imlib/model/Group;)V
    .locals 2
    .param p1, "group"    # Lio/rong/imlib/model/Group;

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getGroupInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public refreshGroupUserInfoCache(Lio/rong/imkit/model/GroupUserInfo;)V
    .locals 3
    .param p1, "groupUserInfo"    # Lio/rong/imkit/model/GroupUserInfo;

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 717
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/utils/StringUtils;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getGroupUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-static {p1}, Lio/rong/imkit/model/Event$GroupUserInfoEvent;->obtain(Lio/rong/imkit/model/GroupUserInfo;)Lio/rong/imkit/model/Event$GroupUserInfoEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public refreshUserInfoCache(Lio/rong/imlib/model/UserInfo;)V
    .locals 2
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 697
    if-nez p1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V
    .locals 3
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    .prologue
    .line 1205
    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v1, "RONG_SDK"

    const-string v2, "Rong SDK should not be initialized at subprocess"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :goto_0
    return-void

    .line 1210
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1211
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v1, "registerConversationTemplate"

    const-string v2, "RongCloud SDK not init"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1215
    :cond_1
    if-nez p1, :cond_2

    .line 1216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1218
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    goto :goto_0
.end method

.method public setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 3
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 228
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lio/rong/imkit/RongIM;->sRongIM:Lio/rong/imkit/RongIM;

    const-string/jumbo v1, "registerMessageTemplate"

    const-string v2, "RongCloud SDK not init"

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V

    goto :goto_0
.end method

.method public setMessageAttachedUserInfo(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 1037
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setUserInfoAttachedState(Z)V

    .line 1038
    return-void
.end method

.method public varargs setOnReceiveUnreadCountChangedListener(Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 4
    .param p1, "listener"    # Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;
    .param p2, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 1055
    sget-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lio/rong/imkit/RongIM;->mCurrentProcessName:Ljava/lang/String;

    sget-object v2, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1056
    sget-object v1, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v2, "RONG_SDK"

    const-string v3, "Rong SDK should not be initialized at subprocess"

    invoke-static {v1, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1061
    new-instance v0, Lio/rong/imkit/RongIM$1;

    invoke-static {p2}, Lio/rong/imkit/model/ConversationTypeFilter;->obtain([Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/rong/imkit/RongIM$1;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imkit/model/ConversationTypeFilter;Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;)V

    .line 1068
    .local v0, "mCounter":Lio/rong/imkit/notification/MessageCounter$Counter;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/rong/imkit/notification/MessageCounter;->registerMessageCounter(Lio/rong/imkit/notification/MessageCounter$Counter;)V

    goto :goto_0
.end method

.method public setSendMessageListener(Lio/rong/imkit/RongIM$OnSendMessageListener;)V
    .locals 2
    .param p1, "listener"    # Lio/rong/imkit/RongIM$OnSendMessageListener;

    .prologue
    .line 738
    if-nez p1, :cond_0

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 741
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 742
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setOnSendMessageListener(Lio/rong/imkit/RongIM$OnSendMessageListener;)V

    .line 745
    return-void
.end method

.method public startConversation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "targetId"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 516
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 517
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "targetId"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 523
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method public startConversationList(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 368
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 369
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversationlist"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 374
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method public startCustomerServiceChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customerServiceUserId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 602
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 605
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_2

    .line 606
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rong://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "targetId"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 612
    .local v7, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 614
    invoke-virtual {p0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    new-instance v3, Lio/rong/message/HandshakeMessage;

    invoke-direct {v3}, Lio/rong/message/HandshakeMessage;-><init>()V

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    .line 615
    return-void
.end method

.method public startDiscussionChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetDiscussionId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 559
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 563
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "targetId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 567
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 568
    return-void
.end method

.method public startGroupChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetGroupId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 579
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 582
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 583
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "targetId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 589
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 590
    return-void
.end method

.method public startPrivateChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetUserId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 490
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 493
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 494
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "targetId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 500
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 501
    return-void
.end method

.method public startPublicServiceProfile(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1081
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1084
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1085
    new-instance v2, Ljava/lang/ExceptionInInitializerError;

    const-string v3, "RongCloud SDK not init"

    invoke-direct {v2, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1087
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rong://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "publicServiceProfile"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "targetId"

    invoke-virtual {v2, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1090
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1091
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1093
    return-void
.end method

.method public startSubConversationList(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 388
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 389
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "subconversationlist"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 396
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 397
    return-void
.end method
