.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "EnterRoomMessage.java"


# static fields
.field public static final ENTER_CODE:Ljava/lang/String; = "code"

.field public static final ENTER_COMMAND:Ljava/lang/String; = "command"

.field public static final ENTER_UC:Ljava/lang/String; = "uc"

.field public static final EVENT_MESSAGE:Ljava/lang/String; = "result"

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private code:Ljava/lang/String;

.field private uc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->uc:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->code:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    if-nez v0, :cond_1

    .line 38
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->uc:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->code:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getUc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->uc:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->code:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setUc(Ljava/lang/String;)V
    .locals 0
    .param p1, "uc"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterRoomMessage;->uc:Ljava/lang/String;

    .line 21
    return-void
.end method
