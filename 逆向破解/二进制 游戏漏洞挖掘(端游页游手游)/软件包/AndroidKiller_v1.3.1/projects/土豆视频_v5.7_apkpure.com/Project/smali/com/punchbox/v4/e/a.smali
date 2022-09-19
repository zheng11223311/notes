.class public Lcom/punchbox/v4/e/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/punchbox/v4/e/a;->a:Z

    const-string v0, "http://service.cocounion.com/core/url"

    sput-object v0, Lcom/punchbox/v4/e/a;->b:Ljava/lang/String;

    const-string v0, "http://service.cocounion.com/core/counter"

    sput-object v0, Lcom/punchbox/v4/e/a;->c:Ljava/lang/String;

    return-void
.end method
