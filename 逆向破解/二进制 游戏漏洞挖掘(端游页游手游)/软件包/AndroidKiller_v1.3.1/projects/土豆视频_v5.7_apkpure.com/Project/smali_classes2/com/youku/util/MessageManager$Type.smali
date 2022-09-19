.class public final enum Lcom/youku/util/MessageManager$Type;
.super Ljava/lang/Enum;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/util/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/util/MessageManager$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/util/MessageManager$Type;

.field public static final enum CHECKED:Lcom/youku/util/MessageManager$Type;

.field public static final enum PRIVATE:Lcom/youku/util/MessageManager$Type;

.field public static final enum SYSTEM:Lcom/youku/util/MessageManager$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/youku/util/MessageManager$Type;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v2}, Lcom/youku/util/MessageManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/util/MessageManager$Type;->SYSTEM:Lcom/youku/util/MessageManager$Type;

    .line 52
    new-instance v0, Lcom/youku/util/MessageManager$Type;

    const-string v1, "CHECKED"

    invoke-direct {v0, v1, v3}, Lcom/youku/util/MessageManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/util/MessageManager$Type;->CHECKED:Lcom/youku/util/MessageManager$Type;

    .line 56
    new-instance v0, Lcom/youku/util/MessageManager$Type;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v4}, Lcom/youku/util/MessageManager$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/util/MessageManager$Type;->PRIVATE:Lcom/youku/util/MessageManager$Type;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/util/MessageManager$Type;

    sget-object v1, Lcom/youku/util/MessageManager$Type;->SYSTEM:Lcom/youku/util/MessageManager$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/util/MessageManager$Type;->CHECKED:Lcom/youku/util/MessageManager$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/util/MessageManager$Type;->PRIVATE:Lcom/youku/util/MessageManager$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/util/MessageManager$Type;->$VALUES:[Lcom/youku/util/MessageManager$Type;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/util/MessageManager$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/youku/util/MessageManager$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/util/MessageManager$Type;

    return-object v0
.end method

.method public static values()[Lcom/youku/util/MessageManager$Type;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/youku/util/MessageManager$Type;->$VALUES:[Lcom/youku/util/MessageManager$Type;

    invoke-virtual {v0}, [Lcom/youku/util/MessageManager$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/util/MessageManager$Type;

    return-object v0
.end method
