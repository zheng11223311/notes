.class public Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;
.super Ljava/lang/Object;
.source "SDKRoomInfo.java"


# static fields
.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    .line 17
    return-void
.end method

.method public static final getInstance()Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public builderRoomInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->getFactory()Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    move-result-object v0

    const-class v1, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    invoke-virtual {v0, v1, p1}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->parser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    return-object v0
.end method
