.class final enum Lcom/punchbox/engine/w;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/punchbox/engine/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/punchbox/engine/w;

.field public static final enum b:Lcom/punchbox/engine/w;

.field private static final synthetic c:[Lcom/punchbox/engine/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/punchbox/engine/w;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/engine/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    new-instance v0, Lcom/punchbox/engine/w;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/punchbox/engine/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/punchbox/engine/w;

    sget-object v1, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    aput-object v1, v0, v3

    sput-object v0, Lcom/punchbox/engine/w;->c:[Lcom/punchbox/engine/w;

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

.method public static valueOf(Ljava/lang/String;)Lcom/punchbox/engine/w;
    .locals 1

    const-class v0, Lcom/punchbox/engine/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/w;

    return-object v0
.end method

.method public static values()[Lcom/punchbox/engine/w;
    .locals 1

    sget-object v0, Lcom/punchbox/engine/w;->c:[Lcom/punchbox/engine/w;

    invoke-virtual {v0}, [Lcom/punchbox/engine/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/punchbox/engine/w;

    return-object v0
.end method
