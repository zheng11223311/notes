.class final enum Lcom/punchbox/engine/n;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/punchbox/engine/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/punchbox/engine/n;

.field public static final enum b:Lcom/punchbox/engine/n;

.field public static final enum c:Lcom/punchbox/engine/n;

.field private static final synthetic d:[Lcom/punchbox/engine/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/punchbox/engine/n;

    const-string v1, "TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/engine/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/engine/n;->a:Lcom/punchbox/engine/n;

    new-instance v0, Lcom/punchbox/engine/n;

    const-string v1, "TYPE_USERCLICK"

    invoke-direct {v0, v1, v3}, Lcom/punchbox/engine/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/engine/n;->b:Lcom/punchbox/engine/n;

    new-instance v0, Lcom/punchbox/engine/n;

    const-string v1, "TYPE_TRICKY"

    invoke-direct {v0, v1, v4}, Lcom/punchbox/engine/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/engine/n;->c:Lcom/punchbox/engine/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/punchbox/engine/n;

    sget-object v1, Lcom/punchbox/engine/n;->a:Lcom/punchbox/engine/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/punchbox/engine/n;->b:Lcom/punchbox/engine/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/punchbox/engine/n;->c:Lcom/punchbox/engine/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/punchbox/engine/n;->d:[Lcom/punchbox/engine/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/punchbox/engine/n;
    .locals 1

    const-class v0, Lcom/punchbox/engine/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/n;

    return-object v0
.end method

.method public static values()[Lcom/punchbox/engine/n;
    .locals 1

    sget-object v0, Lcom/punchbox/engine/n;->d:[Lcom/punchbox/engine/n;

    invoke-virtual {v0}, [Lcom/punchbox/engine/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/punchbox/engine/n;

    return-object v0
.end method
