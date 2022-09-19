.class Lcom/punchbox/v4/k/c;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/k/a;

.field private b:Landroid/content/Intent;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/punchbox/v4/k/a;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/k/c;->a:Lcom/punchbox/v4/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/punchbox/v4/k/a;Lcom/punchbox/v4/k/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/v4/k/c;-><init>(Lcom/punchbox/v4/k/a;)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/v4/k/c;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/k/c;->d:I

    return p1
.end method

.method static synthetic a(Lcom/punchbox/v4/k/c;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/k/c;->c:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/punchbox/v4/k/c;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/k/c;->b:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/punchbox/v4/k/c;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/k/c;->b:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic b(Lcom/punchbox/v4/k/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/k/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/punchbox/v4/k/c;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/v4/k/c;->d:I

    return v0
.end method
