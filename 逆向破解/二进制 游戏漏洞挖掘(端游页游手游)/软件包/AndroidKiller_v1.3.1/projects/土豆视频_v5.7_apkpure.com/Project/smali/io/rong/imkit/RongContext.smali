.class public Lio/rong/imkit/RongContext;
.super Landroid/content/ContextWrapper;
.source "RongContext.java"


# static fields
.field private static sContext:Lio/rong/imkit/RongContext;


# instance fields
.field private isShowNewMessageState:Z

.field private isShowUnreadMessageState:Z

.field private isUserInfoAttached:Z

.field private mAppKey:Ljava/lang/String;

.field private mBus:Lde/greenrobot/event/EventBus;

.field mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

.field private mConversationBehaviorListener:Lio/rong/imkit/RongIM$ConversationBehaviorListener;

.field private mConversationListBehaviorListener:Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

.field private mConversationProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/model/ConversationProviderTag;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationTypeStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCounterLogic:Lio/rong/imkit/notification/MessageCounter;

.field private mCurrentConversationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

.field mDefaultProviderTag:Lio/rong/imkit/model/ProviderTag;

.field private mDefaultTemplate:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

.field private mDiscussionCache:Lio/rong/imkit/cache/RongCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Discussion;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mExtendProvider:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGroupCache:Lio/rong/imkit/cache/RongCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupProvider:Lio/rong/imkit/RongIM$GroupInfoProvider;

.field private mGroupUserInfoCache:Lio/rong/imkit/cache/RongCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/model/GroupUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupUserInfoProvider:Lio/rong/imkit/RongIM$GroupUserInfoProvider;

.field mHandler:Landroid/os/Handler;

.field mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

.field private mIsCacheGroupInfo:Z

.field private mIsCacheGroupUserInfo:Z

.field private mIsCacheUserInfo:Z

.field mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

.field private mLocationProvider:Lio/rong/imkit/RongIM$LocationProvider;

.field private mMemberSelectListener:Lio/rong/imkit/RongIM$OnSelectMemberListener;

.field private mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field private mNotificationCache:Lio/rong/imkit/cache/RongCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSendMessageListener:Lio/rong/imkit/RongIM$OnSendMessageListener;

.field private mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field private mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;",
            "Lio/rong/imkit/model/ProviderTag;",
            ">;"
        }
    .end annotation
.end field

.field private mPublicServiceBehaviorListener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

.field private mPublicServiceInfoCache:Lio/rong/imkit/cache/RongCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field private mTemplateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;",
            "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfoCache:Lio/rong/imkit/cache/RongCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfoProvider:Lio/rong/imkit/RongIM$UserInfoProvider;

.field mVoIPInputProvider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 86
    iput-boolean v0, p0, Lio/rong/imkit/RongContext;->mIsCacheUserInfo:Z

    .line 87
    iput-boolean v0, p0, Lio/rong/imkit/RongContext;->mIsCacheGroupInfo:Z

    .line 88
    iput-boolean v0, p0, Lio/rong/imkit/RongContext;->mIsCacheGroupUserInfo:Z

    .line 154
    invoke-static {p1}, Lio/rong/common/ResourceUtils;->init(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mBus:Lde/greenrobot/event/EventBus;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mTemplateMap:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mProviderMap:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTagMap:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    .line 169
    new-instance v0, Lio/rong/imkit/notification/MessageCounter;

    invoke-direct {v0, p0}, Lio/rong/imkit/notification/MessageCounter;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mCounterLogic:Lio/rong/imkit/notification/MessageCounter;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    .line 173
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x1e

    invoke-direct {v7, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    .line 175
    .local v7, "mWorkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v8, Lio/rong/imkit/RongContext$1;

    invoke-direct {v8, p0}, Lio/rong/imkit/RongContext$1;-><init>(Lio/rong/imkit/RongContext;)V

    .line 192
    .local v8, "mThreadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lio/rong/imkit/RongContext;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 196
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sea_monster/network/DiscardOldestPolicy;

    invoke-direct {v1}, Lcom/sea_monster/network/DiscardOldestPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    .line 199
    invoke-direct {p0}, Lio/rong/imkit/RongContext;->initCache()V

    .line 201
    new-instance v0, Lcom/sea_monster/resource/ResourceHandler$Builder;

    invoke-direct {v0}, Lcom/sea_monster/resource/ResourceHandler$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/sea_monster/resource/ResourceHandler$Builder;->enableBitmapCache()Lcom/sea_monster/resource/ResourceHandler$Builder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/ResourceHandler$Builder;->setOutputSizeLimit(I)Lcom/sea_monster/resource/ResourceHandler$Builder;

    move-result-object v0

    const-string v1, "kit"

    invoke-virtual {v0, v1}, Lcom/sea_monster/resource/ResourceHandler$Builder;->setType(Ljava/lang/String;)Lcom/sea_monster/resource/ResourceHandler$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sea_monster/resource/ResourceHandler$Builder;->build(Landroid/content/Context;)Lcom/sea_monster/resource/ResourceHandler;

    .line 203
    invoke-static {p0}, Lio/rong/imkit/util/AndroidEmoji;->init(Landroid/content/Context;)V

    .line 205
    invoke-static {}, Lio/rong/imkit/RongNotificationManager;->getInstance()Lio/rong/imkit/RongNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongNotificationManager;->init(Lio/rong/imkit/RongContext;)V

    .line 207
    invoke-static {p0}, Lio/rong/imkit/notification/MessageSounder;->init(Landroid/content/Context;)V

    .line 209
    new-instance v0, Lio/rong/imkit/widget/provider/DefaultMessageItemProvider;

    invoke-direct {v0}, Lio/rong/imkit/widget/provider/DefaultMessageItemProvider;-><init>()V

    invoke-direct {p0, v0}, Lio/rong/imkit/RongContext;->setDefaultMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/RongContext;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 71
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->mIsCacheUserInfo:Z

    return v0
.end method

.method static synthetic access$100(Lio/rong/imkit/RongContext;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 71
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->mIsCacheGroupUserInfo:Z

    return v0
.end method

.method static synthetic access$200(Lio/rong/imkit/RongContext;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 71
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->mIsCacheGroupInfo:Z

    return v0
.end method

.method public static getInstance()Lio/rong/imkit/RongContext;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {p0}, Lio/rong/imkit/utils/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "mainProcessName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v2, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    if-nez v2, :cond_1

    .line 141
    new-instance v2, Lio/rong/imkit/RongContext;

    invoke-direct {v2, p0}, Lio/rong/imkit/RongContext;-><init>(Landroid/content/Context;)V

    sput-object v2, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    .line 143
    :cond_1
    sget-object v2, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v2}, Lio/rong/imkit/RongContext;->initRegister()V

    goto :goto_0
.end method

.method private initCache()V
    .locals 3

    .prologue
    const/16 v1, 0x64

    const/16 v2, 0xa

    .line 323
    new-instance v0, Lio/rong/imkit/RongContext$2;

    invoke-direct {v0, p0, p0, v1}, Lio/rong/imkit/RongContext$2;-><init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mUserInfoCache:Lio/rong/imkit/cache/RongCache;

    .line 376
    new-instance v0, Lio/rong/imkit/RongContext$3;

    invoke-direct {v0, p0, p0, v1}, Lio/rong/imkit/RongContext$3;-><init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mGroupUserInfoCache:Lio/rong/imkit/cache/RongCache;

    .line 424
    new-instance v0, Lio/rong/imkit/RongContext$4;

    invoke-direct {v0, p0, p0, v2}, Lio/rong/imkit/RongContext$4;-><init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mGroupCache:Lio/rong/imkit/cache/RongCache;

    .line 468
    new-instance v0, Lio/rong/imkit/RongContext$5;

    invoke-direct {v0, p0, p0, v2}, Lio/rong/imkit/RongContext$5;-><init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mDiscussionCache:Lio/rong/imkit/cache/RongCache;

    .line 516
    new-instance v0, Lio/rong/imkit/RongContext$6;

    const/16 v1, 0x32

    invoke-direct {v0, p0, p0, v1}, Lio/rong/imkit/RongContext$6;-><init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mPublicServiceInfoCache:Lio/rong/imkit/cache/RongCache;

    .line 591
    new-instance v0, Lio/rong/imkit/RongContext$7;

    invoke-direct {v0, p0, p0, v2}, Lio/rong/imkit/RongContext$7;-><init>(Lio/rong/imkit/RongContext;Lio/rong/imkit/RongContext;I)V

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mNotificationCache:Lio/rong/imkit/cache/RongCache;

    .line 643
    return-void
.end method

.method private initRegister()V
    .locals 14

    .prologue
    .line 214
    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->registerDefaultConversationGatherState()V

    .line 215
    new-instance v11, Lio/rong/imkit/widget/provider/PrivateConversationProvider;

    invoke-direct {v11}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;-><init>()V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 216
    new-instance v11, Lio/rong/imkit/widget/provider/GroupConversationProvider;

    invoke-direct {v11}, Lio/rong/imkit/widget/provider/GroupConversationProvider;-><init>()V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 217
    new-instance v11, Lio/rong/imkit/widget/provider/DiscussionConversationProvider;

    invoke-direct {v11}, Lio/rong/imkit/widget/provider/DiscussionConversationProvider;-><init>()V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 218
    new-instance v11, Lio/rong/imkit/widget/provider/SystemConversationProvider;

    invoke-direct {v11}, Lio/rong/imkit/widget/provider/SystemConversationProvider;-><init>()V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 219
    new-instance v11, Lio/rong/imkit/widget/provider/CustomerServiceConversationProvider;

    invoke-direct {v11}, Lio/rong/imkit/widget/provider/CustomerServiceConversationProvider;-><init>()V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 220
    new-instance v11, Lio/rong/imkit/widget/provider/AppServiceConversationProvider;

    invoke-direct {v11}, Lio/rong/imkit/widget/provider/AppServiceConversationProvider;-><init>()V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 221
    new-instance v11, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;

    invoke-direct {v11}, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;-><init>()V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 222
    new-instance v11, Lio/rong/imkit/widget/provider/TextInputProvider;

    sget-object v12, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v11, v12}, Lio/rong/imkit/widget/provider/TextInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 223
    new-instance v11, Lio/rong/imkit/widget/provider/VoiceInputProvider;

    sget-object v12, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v11, v12}, Lio/rong/imkit/widget/provider/VoiceInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 224
    new-instance v11, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;

    sget-object v12, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v11, v12}, Lio/rong/imkit/widget/provider/PublicServiceMenuInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    invoke-virtual {p0, v11}, Lio/rong/imkit/RongContext;->setMenuInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 226
    new-instance v11, Lio/rong/imkit/widget/provider/ImageInputProvider;

    sget-object v12, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v11, v12}, Lio/rong/imkit/widget/provider/ImageInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    .line 227
    new-instance v11, Lio/rong/imkit/widget/provider/CameraInputProvider;

    sget-object v12, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v11, v12}, Lio/rong/imkit/widget/provider/CameraInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    .line 228
    new-instance v11, Lio/rong/imkit/widget/provider/LocationInputProvider;

    sget-object v12, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    invoke-direct {v11, v12}, Lio/rong/imkit/widget/provider/LocationInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    iput-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    .line 230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v6, "privateProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    sget-boolean v11, Lio/rong/common/Build;->SDK_WITH_VOIP:Z

    if-eqz v11, :cond_0

    .line 234
    :try_start_0
    const-string v11, "io.rong.imkit.widget.provider.VoIPInputProvider"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 236
    .local v10, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lio/rong/imkit/RongContext;

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 237
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lio/rong/imkit/RongContext;->sContext:Lio/rong/imkit/RongContext;

    aput-object v13, v11, v12

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    iput-object v11, p0, Lio/rong/imkit/RongContext;->mVoIPInputProvider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 250
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    .end local v10    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    :goto_0
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mVoIPInputProvider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    if-eqz v11, :cond_0

    .line 251
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mVoIPInputProvider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "chatRoomProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v5, "groupProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, "customerProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v3, "discussionProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v8, "publicProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v7, "publicAppProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v9, "systemProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v11, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void

    .line 238
    .end local v0    # "chatRoomProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    .end local v2    # "customerProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    .end local v3    # "discussionProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    .end local v5    # "groupProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    .end local v7    # "publicAppProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    .end local v8    # "publicProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    .end local v9    # "systemProvider":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    :catch_0
    move-exception v4

    .line 239
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v11, "VOIP"

    const-string v12, "ClassNotFoundException"

    invoke-static {p0, v11, v12}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string v11, "VOIP"

    const-string v12, "NoSuchMethodException"

    invoke-static {p0, v11, v12}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v11, "VOIP"

    const-string v12, "InvocationTargetException"

    invoke-static {p0, v11, v12}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 244
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v4

    .line 245
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string v11, "VOIP"

    const-string v12, "InstantiationException"

    invoke-static {p0, v11, v12}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v11, "VOIP"

    const-string v12, "IllegalAccessException"

    invoke-static {p0, v11, v12}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setDefaultMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V
    .locals 2
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    .prologue
    .line 746
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mDefaultTemplate:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    .line 748
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mDefaultTemplate:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imkit/model/ProviderTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ProviderTag;

    iput-object v0, p0, Lio/rong/imkit/RongContext;->mDefaultProviderTag:Lio/rong/imkit/model/ProviderTag;

    .line 749
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mDefaultProviderTag:Lio/rong/imkit/model/ProviderTag;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ProviderTag not def MessageContent type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method public addInputExtentionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 5
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "providers"    # [Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .prologue
    .line 880
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 887
    :cond_0
    return-void

    .line 882
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 883
    move-object v0, p2

    .local v0, "arr$":[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 884
    .local v3, "p":Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public executorBackground(Lcom/sea_monster/common/PriorityRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lcom/sea_monster/common/PriorityRunnable;

    .prologue
    .line 780
    if-nez p1, :cond_0

    .line 784
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public executorBackground(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 760
    if-nez p1, :cond_0

    .line 777
    :goto_0
    return-void

    .line 763
    :cond_0
    const/4 v0, 0x0

    .line 765
    .local v0, "execRunnable":Lcom/sea_monster/common/PriorityRunnable;
    instance-of v1, p1, Lcom/sea_monster/common/PriorityRunnable;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 766
    check-cast v0, Lcom/sea_monster/common/PriorityRunnable;

    .line 776
    :goto_1
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 768
    :cond_1
    new-instance v0, Lio/rong/imkit/RongContext$8;

    .end local v0    # "execRunnable":Lcom/sea_monster/common/PriorityRunnable;
    invoke-direct {v0, p0, p1}, Lio/rong/imkit/RongContext$8;-><init>(Lio/rong/imkit/RongContext;Ljava/lang/Runnable;)V

    .restart local v0    # "execRunnable":Lcom/sea_monster/common/PriorityRunnable;
    goto :goto_1
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraInputProvider()Lio/rong/imkit/widget/provider/CameraInputProvider;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mCameraInputProvider:Lio/rong/imkit/widget/provider/CameraInputProvider;

    return-object v0
.end method

.method public getConversationBehaviorListener()Lio/rong/imkit/RongIM$ConversationBehaviorListener;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationBehaviorListener:Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    return-object v0
.end method

.method public getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const-string v0, "getConversationGatherState "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationListBehaviorListener:Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    return-object v0
.end method

.method public getConversationNotifyStatusFromCache(Lio/rong/imkit/model/ConversationKey;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .locals 2
    .param p1, "messageKey"    # Lio/rong/imkit/model/ConversationKey;

    .prologue
    .line 818
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mNotificationCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .line 821
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConversationProviderTag(Ljava/lang/String;)Lio/rong/imkit/model/ConversationProviderTag;
    .locals 2
    .param p1, "conversationType"    # Ljava/lang/String;

    .prologue
    .line 695
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "the conversation type hasn\'t been registered!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationProviderTag;

    return-object v0
.end method

.method public getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;
    .locals 1
    .param p1, "conversationType"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    return-object v0
.end method

.method public getCurrentConversationList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/rong/imkit/model/ConversationInfo;>;"
    iget-object v5, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 664
    .local v4, "size":I
    if-lez v4, :cond_0

    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 666
    iget-object v5, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v3

    .line 667
    .local v3, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationKey;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationKey;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationInfo;->obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imkit/model/ConversationInfo;

    move-result-object v1

    .line 668
    .local v1, "info":Lio/rong/imkit/model/ConversationInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .end local v0    # "i":I
    .end local v1    # "info":Lio/rong/imkit/model/ConversationInfo;
    .end local v3    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-object v2
.end method

.method public getCurrentUserInfo()Lio/rong/imlib/model/UserInfo;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

    .line 990
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiscussionCache()Lio/rong/imkit/cache/RongCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Discussion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mDiscussionCache:Lio/rong/imkit/cache/RongCache;

    return-object v0
.end method

.method public getDiscussionInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;
    .locals 1
    .param p1, "discussionId"    # Ljava/lang/String;

    .prologue
    .line 810
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mDiscussionCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {v0, p1}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Discussion;

    return-object v0
.end method

.method public getEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public getGroupInfoCache()Lio/rong/imkit/cache/RongCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupCache:Lio/rong/imkit/cache/RongCache;

    return-object v0
.end method

.method public getGroupInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Group;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 795
    if-eqz p1, :cond_0

    .line 796
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {v0, p1}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Group;

    .line 798
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupInfoProvider()Lio/rong/imkit/RongIM$GroupInfoProvider;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupProvider:Lio/rong/imkit/RongIM$GroupInfoProvider;

    return-object v0
.end method

.method public getGroupUserInfoCache()Lio/rong/imkit/cache/RongCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imkit/model/GroupUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupUserInfoCache:Lio/rong/imkit/cache/RongCache;

    return-object v0
.end method

.method public getGroupUserInfoFromCache(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 802
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupUserInfoCache:Lio/rong/imkit/cache/RongCache;

    invoke-static {p1, p2}, Lio/rong/imkit/utils/StringUtils;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/GroupUserInfo;

    return-object v0
.end method

.method public getGroupUserInfoProvider()Lio/rong/imkit/RongIM$GroupUserInfoProvider;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mGroupUserInfoProvider:Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    return-object v0
.end method

.method public getImageInputProvider()Lio/rong/imkit/widget/provider/ImageInputProvider;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mImageInputProvider:Lio/rong/imkit/widget/provider/ImageInputProvider;

    return-object v0
.end method

.method public getLocationInputProvider()Lio/rong/imkit/widget/provider/LocationInputProvider;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mLocationInputProvider:Lio/rong/imkit/widget/provider/LocationInputProvider;

    return-object v0
.end method

.method public getLocationProvider()Lio/rong/imkit/RongIM$LocationProvider;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mLocationProvider:Lio/rong/imkit/RongIM$LocationProvider;

    return-object v0
.end method

.method public getMemberSelectListener()Lio/rong/imkit/RongIM$OnSelectMemberListener;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mMemberSelectListener:Lio/rong/imkit/RongIM$OnSelectMemberListener;

    return-object v0
.end method

.method public getMenuInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    return-object v0
.end method

.method public getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mCounterLogic:Lio/rong/imkit/notification/MessageCounter;

    return-object v0
.end method

.method public getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)",
            "Lio/rong/imkit/model/ProviderTag;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mDefaultProviderTag:Lio/rong/imkit/model/ProviderTag;

    .line 756
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ProviderTag;

    goto :goto_0
.end method

.method public getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)",
            "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mTemplateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    .line 738
    .local v0, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mDefaultTemplate:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    .line 740
    .end local v0    # "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    :cond_0
    return-object v0
.end method

.method public getNewMessageState()Z
    .locals 1

    .prologue
    .line 1050
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->isShowNewMessageState:Z

    return v0
.end method

.method public getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mOnSendMessageListener:Lio/rong/imkit/RongIM$OnSendMessageListener;

    return-object v0
.end method

.method public getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    return-object v0
.end method

.method public getPublicServiceBehaviorListener()Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPublicServiceBehaviorListener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    return-object v0
.end method

.method public getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPublicServiceInfoCache:Lio/rong/imkit/cache/RongCache;

    return-object v0
.end method

.method public getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;
    .locals 1
    .param p1, "messageKey"    # Ljava/lang/String;

    .prologue
    .line 814
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPublicServiceInfoCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {v0, p1}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfile;

    return-object v0
.end method

.method public getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;
    .locals 1
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 999
    const-string v0, "rc_token"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "token_value"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageState()Z
    .locals 1

    .prologue
    .line 1046
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->isShowUnreadMessageState:Z

    return v0
.end method

.method public getUserInfoAttachedState()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lio/rong/imkit/RongContext;->isUserInfoAttached:Z

    return v0
.end method

.method public declared-synchronized getUserInfoCache()Lio/rong/imkit/cache/RongCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rong/imkit/cache/RongCache",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mUserInfoCache:Lio/rong/imkit/cache/RongCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 788
    if-eqz p1, :cond_0

    .line 789
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mUserInfoCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {v0, p1}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    .line 791
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserInfoProvider()Lio/rong/imkit/RongIM$UserInfoProvider;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mUserInfoProvider:Lio/rong/imkit/RongIM$UserInfoProvider;

    return-object v0
.end method

.method public getVoIPInputProvider()Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mVoIPInputProvider:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    return-object v0
.end method

.method public registerConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V
    .locals 3
    .param p1, "info"    # Lio/rong/imkit/model/ConversationInfo;

    .prologue
    .line 934
    if-eqz p1, :cond_0

    .line 935
    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 936
    .local v0, "key":Lio/rong/imkit/model/ConversationKey;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    .end local v0    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-void
.end method

.method public registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V
    .locals 3
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    .prologue
    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imkit/model/ConversationProviderTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationProviderTag;

    .line 684
    .local v0, "tag":Lio/rong/imkit/model/ConversationProviderTag;
    if-nez v0, :cond_0

    .line 685
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No ConversationProviderTag added with your provider!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mConversationProviderMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ConversationProviderTag;->conversationType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mConversationTagMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ConversationProviderTag;->conversationType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    return-void
.end method

.method public registerDefaultConversationGatherState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 702
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 703
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 704
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 705
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 706
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 707
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 708
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 709
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 711
    return-void
.end method

.method public registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V
    .locals 3
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    .prologue
    .line 729
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imkit/model/ProviderTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ProviderTag;

    .line 730
    .local v0, "tag":Lio/rong/imkit/model/ProviderTag;
    if-nez v0, :cond_0

    .line 731
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ProviderTag not def MessageContent type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 732
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mTemplateMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ProviderTag;->messageContent()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0}, Lio/rong/imkit/model/ProviderTag;->messageContent()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-void
.end method

.method public resetInputExtentionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 5
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "providers"    # [Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .prologue
    .line 890
    if-nez p1, :cond_1

    .line 900
    :cond_0
    return-void

    .line 892
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 893
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 894
    if-eqz p2, :cond_0

    .line 896
    move-object v0, p2

    .local v0, "arr$":[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 897
    .local v3, "p":Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    iget-object v4, p0, Lio/rong/imkit/RongContext;->mExtendProvider:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public saveAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 1030
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mAppKey:Ljava/lang/String;

    .line 1031
    return-void
.end method

.method public setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V
    .locals 0
    .param p1, "conversationBehaviorListener"    # Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    .prologue
    .line 833
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mConversationBehaviorListener:Lio/rong/imkit/RongIM$ConversationBehaviorListener;

    .line 834
    return-void
.end method

.method public setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Boolean;

    .prologue
    .line 714
    if-nez p1, :cond_0

    .line 715
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name of the register conversation type can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mConversationTypeStateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    return-void
.end method

.method public setConversationListBehaviorListener(Lio/rong/imkit/RongIM$ConversationListBehaviorListener;)V
    .locals 0
    .param p1, "conversationListBehaviorListener"    # Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    .prologue
    .line 1026
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mConversationListBehaviorListener:Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    .line 1027
    return-void
.end method

.method public setConversationNotifyStatusToCache(Lio/rong/imkit/model/ConversationKey;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 2
    .param p1, "conversationKey"    # Lio/rong/imkit/model/ConversationKey;
    .param p2, "status"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .prologue
    .line 825
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mNotificationCache:Lio/rong/imkit/cache/RongCache;

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    return-void
.end method

.method public setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 2
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 974
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mCurrentUserInfo:Lio/rong/imlib/model/UserInfo;

    .line 976
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_0
    return-void
.end method

.method setGetGroupInfoProvider(Lio/rong/imkit/RongIM$GroupInfoProvider;Z)V
    .locals 0
    .param p1, "provider"    # Lio/rong/imkit/RongIM$GroupInfoProvider;
    .param p2, "isCacheGroupInfo"    # Z

    .prologue
    .line 858
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mGroupProvider:Lio/rong/imkit/RongIM$GroupInfoProvider;

    .line 859
    iput-boolean p2, p0, Lio/rong/imkit/RongContext;->mIsCacheGroupInfo:Z

    .line 860
    return-void
.end method

.method public setGetUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V
    .locals 0
    .param p1, "provider"    # Lio/rong/imkit/RongIM$UserInfoProvider;
    .param p2, "isCache"    # Z

    .prologue
    .line 853
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mUserInfoProvider:Lio/rong/imkit/RongIM$UserInfoProvider;

    .line 854
    iput-boolean p2, p0, Lio/rong/imkit/RongContext;->mIsCacheUserInfo:Z

    .line 855
    return-void
.end method

.method public setGroupUserInfoProvider(Lio/rong/imkit/RongIM$GroupUserInfoProvider;Z)V
    .locals 0
    .param p1, "groupUserInfoProvider"    # Lio/rong/imkit/RongIM$GroupUserInfoProvider;
    .param p2, "isCache"    # Z

    .prologue
    .line 871
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mGroupUserInfoProvider:Lio/rong/imkit/RongIM$GroupUserInfoProvider;

    .line 872
    iput-boolean p2, p0, Lio/rong/imkit/RongContext;->mIsCacheGroupUserInfo:Z

    .line 873
    return-void
.end method

.method public setLocationProvider(Lio/rong/imkit/RongIM$LocationProvider;)V
    .locals 0
    .param p1, "locationProvider"    # Lio/rong/imkit/RongIM$LocationProvider;

    .prologue
    .line 957
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mLocationProvider:Lio/rong/imkit/RongIM$LocationProvider;

    .line 958
    return-void
.end method

.method public setMenuInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    .line 914
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 915
    return-void
.end method

.method public setOnMemberSelectListener(Lio/rong/imkit/RongIM$OnSelectMemberListener;)V
    .locals 0
    .param p1, "listener"    # Lio/rong/imkit/RongIM$OnSelectMemberListener;

    .prologue
    .line 845
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mMemberSelectListener:Lio/rong/imkit/RongIM$OnSelectMemberListener;

    .line 846
    return-void
.end method

.method public setOnSendMessageListener(Lio/rong/imkit/RongIM$OnSendMessageListener;)V
    .locals 0
    .param p1, "onSendMessageListener"    # Lio/rong/imkit/RongIM$OnSendMessageListener;

    .prologue
    .line 965
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mOnSendMessageListener:Lio/rong/imkit/RongIM$OnSendMessageListener;

    .line 966
    return-void
.end method

.method public setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 2
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    .line 904
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 905
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mPrimaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setIndex(I)V

    .line 906
    return-void
.end method

.method public setPublicServiceBehaviorListener(Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;)V
    .locals 0
    .param p1, "publicServiceBehaviorListener"    # Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    .prologue
    .line 841
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mPublicServiceBehaviorListener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    .line 842
    return-void
.end method

.method public setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 2
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    .line 909
    iput-object p1, p0, Lio/rong/imkit/RongContext;->mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 910
    iget-object v0, p0, Lio/rong/imkit/RongContext;->mSecondaryProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setIndex(I)V

    .line 911
    return-void
.end method

.method public setUserInfoAttachedState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1008
    iput-boolean p1, p0, Lio/rong/imkit/RongContext;->isUserInfoAttached:Z

    .line 1009
    return-void
.end method

.method public showNewMessageIcon(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1042
    iput-boolean p1, p0, Lio/rong/imkit/RongContext;->isShowNewMessageState:Z

    .line 1043
    return-void
.end method

.method public showUnreadMessageIcon(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1038
    iput-boolean p1, p0, Lio/rong/imkit/RongContext;->isShowUnreadMessageState:Z

    .line 1039
    return-void
.end method

.method public unregisterConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V
    .locals 3
    .param p1, "info"    # Lio/rong/imkit/model/ConversationInfo;

    .prologue
    .line 943
    if-eqz p1, :cond_0

    .line 944
    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 945
    .local v0, "key":Lio/rong/imkit/model/ConversationKey;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 946
    iget-object v1, p0, Lio/rong/imkit/RongContext;->mCurrentConversationList:Ljava/util/List;

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 949
    .end local v0    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-void
.end method
