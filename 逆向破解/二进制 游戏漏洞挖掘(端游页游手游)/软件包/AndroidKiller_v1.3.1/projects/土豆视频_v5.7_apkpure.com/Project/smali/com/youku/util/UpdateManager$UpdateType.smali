.class public final enum Lcom/youku/util/UpdateManager$UpdateType;
.super Ljava/lang/Enum;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/util/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/util/UpdateManager$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/util/UpdateManager$UpdateType;

.field public static final enum check:Lcom/youku/util/UpdateManager$UpdateType;

.field public static final enum force:Lcom/youku/util/UpdateManager$UpdateType;

.field public static final enum push:Lcom/youku/util/UpdateManager$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/youku/util/UpdateManager$UpdateType;

    const-string v1, "push"

    invoke-direct {v0, v1, v2}, Lcom/youku/util/UpdateManager$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/util/UpdateManager$UpdateType;->push:Lcom/youku/util/UpdateManager$UpdateType;

    new-instance v0, Lcom/youku/util/UpdateManager$UpdateType;

    const-string v1, "check"

    invoke-direct {v0, v1, v3}, Lcom/youku/util/UpdateManager$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/util/UpdateManager$UpdateType;->check:Lcom/youku/util/UpdateManager$UpdateType;

    new-instance v0, Lcom/youku/util/UpdateManager$UpdateType;

    const-string v1, "force"

    invoke-direct {v0, v1, v4}, Lcom/youku/util/UpdateManager$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/util/UpdateManager$UpdateType;->force:Lcom/youku/util/UpdateManager$UpdateType;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/util/UpdateManager$UpdateType;

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->push:Lcom/youku/util/UpdateManager$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->check:Lcom/youku/util/UpdateManager$UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/util/UpdateManager$UpdateType;->force:Lcom/youku/util/UpdateManager$UpdateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/util/UpdateManager$UpdateType;->$VALUES:[Lcom/youku/util/UpdateManager$UpdateType;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/util/UpdateManager$UpdateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/youku/util/UpdateManager$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/util/UpdateManager$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/youku/util/UpdateManager$UpdateType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/youku/util/UpdateManager$UpdateType;->$VALUES:[Lcom/youku/util/UpdateManager$UpdateType;

    invoke-virtual {v0}, [Lcom/youku/util/UpdateManager$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/util/UpdateManager$UpdateType;

    return-object v0
.end method
