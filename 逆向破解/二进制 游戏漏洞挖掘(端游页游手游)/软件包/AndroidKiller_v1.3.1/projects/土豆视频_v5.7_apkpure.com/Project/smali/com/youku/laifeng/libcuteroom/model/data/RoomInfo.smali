.class public Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;
.super Ljava/lang/Object;
.source "RoomInfo.java"


# static fields
.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    .line 14
    return-void
.end method

.method public static final getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    if-nez v0, :cond_1

    .line 18
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    return-object v0

    .line 22
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
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->getFactory()Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    move-result-object v0

    const-class v1, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    invoke-virtual {v0, v1, p1}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->parser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    return-object v0
.end method
