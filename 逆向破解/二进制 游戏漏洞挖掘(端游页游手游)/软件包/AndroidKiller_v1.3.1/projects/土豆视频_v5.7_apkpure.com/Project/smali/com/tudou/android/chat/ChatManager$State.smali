.class public final enum Lcom/tudou/android/chat/ChatManager$State;
.super Ljava/lang/Enum;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/chat/ChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/android/chat/ChatManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/android/chat/ChatManager$State;

.field public static final enum STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

.field public static final enum STATE_CREATE:Lcom/tudou/android/chat/ChatManager$State;

.field public static final enum STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

.field public static final enum STATE_INVITE:Lcom/tudou/android/chat/ChatManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    new-instance v0, Lcom/tudou/android/chat/ChatManager$State;

    const-string v1, "STATE_CREATE"

    invoke-direct {v0, v1, v2}, Lcom/tudou/android/chat/ChatManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE:Lcom/tudou/android/chat/ChatManager$State;

    new-instance v0, Lcom/tudou/android/chat/ChatManager$State;

    const-string v1, "STATE_CREATE_RESULT"

    invoke-direct {v0, v1, v3}, Lcom/tudou/android/chat/ChatManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

    new-instance v0, Lcom/tudou/android/chat/ChatManager$State;

    const-string v1, "STATE_INVITE"

    invoke-direct {v0, v1, v4}, Lcom/tudou/android/chat/ChatManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/chat/ChatManager$State;->STATE_INVITE:Lcom/tudou/android/chat/ChatManager$State;

    new-instance v0, Lcom/tudou/android/chat/ChatManager$State;

    const-string v1, "STATE_CONVERSATION"

    invoke-direct {v0, v1, v5}, Lcom/tudou/android/chat/ChatManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    .line 784
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tudou/android/chat/ChatManager$State;

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE:Lcom/tudou/android/chat/ChatManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_INVITE:Lcom/tudou/android/chat/ChatManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tudou/android/chat/ChatManager$State;->$VALUES:[Lcom/tudou/android/chat/ChatManager$State;

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
    .line 784
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/android/chat/ChatManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 784
    const-class v0, Lcom/tudou/android/chat/ChatManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/android/chat/ChatManager$State;

    return-object v0
.end method

.method public static values()[Lcom/tudou/android/chat/ChatManager$State;
    .locals 1

    .prologue
    .line 784
    sget-object v0, Lcom/tudou/android/chat/ChatManager$State;->$VALUES:[Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v0}, [Lcom/tudou/android/chat/ChatManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/android/chat/ChatManager$State;

    return-object v0
.end method
