.class public final enum Lcom/punchbox/v4/b/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/punchbox/v4/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/punchbox/v4/b/b;

.field public static final enum b:Lcom/punchbox/v4/b/b;

.field public static final enum c:Lcom/punchbox/v4/b/b;

.field private static final synthetic d:[Lcom/punchbox/v4/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/punchbox/v4/b/b;

    const-string v1, "channel"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/v4/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/v4/b/b;->a:Lcom/punchbox/v4/b/b;

    new-instance v0, Lcom/punchbox/v4/b/b;

    const-string v1, "appIdentifier"

    invoke-direct {v0, v1, v3}, Lcom/punchbox/v4/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/v4/b/b;->b:Lcom/punchbox/v4/b/b;

    new-instance v0, Lcom/punchbox/v4/b/b;

    const-string v1, "appVersion"

    invoke-direct {v0, v1, v4}, Lcom/punchbox/v4/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/punchbox/v4/b/b;->c:Lcom/punchbox/v4/b/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/punchbox/v4/b/b;

    sget-object v1, Lcom/punchbox/v4/b/b;->a:Lcom/punchbox/v4/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/punchbox/v4/b/b;->b:Lcom/punchbox/v4/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/punchbox/v4/b/b;->c:Lcom/punchbox/v4/b/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/punchbox/v4/b/b;->d:[Lcom/punchbox/v4/b/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/punchbox/v4/b/b;
    .locals 1

    const-class v0, Lcom/punchbox/v4/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/punchbox/v4/b/b;

    return-object v0
.end method

.method public static values()[Lcom/punchbox/v4/b/b;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/b/b;->d:[Lcom/punchbox/v4/b/b;

    invoke-virtual {v0}, [Lcom/punchbox/v4/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/punchbox/v4/b/b;

    return-object v0
.end method
