.class public final enum Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;
.super Ljava/lang/Enum;
.source "SYTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

.field public static final enum IDLE:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

.field public static final enum RUNNING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

.field public static final enum STOP:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

.field public static final enum WAITING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->IDLE:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 270
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->RUNNING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 271
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v4}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->WAITING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 272
    new-instance v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->STOP:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    .line 268
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    sget-object v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->IDLE:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->RUNNING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->WAITING:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->STOP:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->$VALUES:[Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

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
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    const-class v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->$VALUES:[Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    invoke-virtual {v0}, [Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer$STATUS;

    return-object v0
.end method
