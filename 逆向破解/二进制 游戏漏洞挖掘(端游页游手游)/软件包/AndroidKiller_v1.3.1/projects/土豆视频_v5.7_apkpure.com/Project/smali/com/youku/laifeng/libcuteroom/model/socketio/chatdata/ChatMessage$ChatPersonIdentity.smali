.class public final enum Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;
.super Ljava/lang/Enum;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatPersonIdentity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

.field public static final enum Ancher:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

.field public static final enum General:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

.field public static final enum Guard:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    const-string v1, "Ancher"

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->Ancher:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    const-string v1, "Guard"

    invoke-direct {v0, v1, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->Guard:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    const-string v1, "General"

    invoke-direct {v0, v1, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->General:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->Ancher:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->Guard:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->General:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->$VALUES:[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    return-object v0
.end method

.method public static values()[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->$VALUES:[Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    invoke-virtual {v0}, [Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;

    return-object v0
.end method
