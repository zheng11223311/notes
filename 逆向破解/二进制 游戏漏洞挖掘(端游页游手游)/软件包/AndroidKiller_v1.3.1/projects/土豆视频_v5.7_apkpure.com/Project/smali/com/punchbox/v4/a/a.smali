.class public Lcom/punchbox/v4/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/punchbox/v4/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/punchbox/v4/a/k;

    invoke-direct {v0}, Lcom/punchbox/v4/a/k;-><init>()V

    sput-object v0, Lcom/punchbox/v4/a/a;->a:Lcom/punchbox/v4/a/g;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/punchbox/v4/a/j;

    invoke-direct {v0}, Lcom/punchbox/v4/a/j;-><init>()V

    sput-object v0, Lcom/punchbox/v4/a/a;->a:Lcom/punchbox/v4/a/g;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/punchbox/v4/a/i;

    invoke-direct {v0}, Lcom/punchbox/v4/a/i;-><init>()V

    sput-object v0, Lcom/punchbox/v4/a/a;->a:Lcom/punchbox/v4/a/g;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/punchbox/v4/a/h;

    invoke-direct {v0}, Lcom/punchbox/v4/a/h;-><init>()V

    sput-object v0, Lcom/punchbox/v4/a/a;->a:Lcom/punchbox/v4/a/g;

    goto :goto_0
.end method

.method static synthetic a()Lcom/punchbox/v4/a/g;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/a/a;->a:Lcom/punchbox/v4/a/g;

    return-object v0
.end method
