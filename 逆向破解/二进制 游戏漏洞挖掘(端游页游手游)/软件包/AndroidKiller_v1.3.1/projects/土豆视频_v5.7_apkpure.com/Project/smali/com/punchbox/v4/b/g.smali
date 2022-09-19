.class public Lcom/punchbox/v4/b/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/punchbox/v4/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CocoData_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/punchbox/v4/b/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/b/g;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/punchbox/v4/b/g;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/punchbox/v4/b/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://192.168.15.39:3000"

    sput-object v0, Lcom/punchbox/v4/b/g;->b:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/punchbox/v4/c/a;

    invoke-direct {v0}, Lcom/punchbox/v4/c/a;-><init>()V

    sput-object v0, Lcom/punchbox/v4/b/g;->c:Lcom/punchbox/v4/c/a;

    return-void

    :cond_0
    const-string v0, "http://stats.cocounion.com"

    sput-object v0, Lcom/punchbox/v4/b/g;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/punchbox/v4/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/b/g;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Lcom/punchbox/v4/c/f;)V
    .locals 7

    sget-object v0, Lcom/punchbox/v4/b/g;->c:Lcom/punchbox/v4/c/a;

    invoke-static {p1}, Lcom/punchbox/v4/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "application/gzip"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/punchbox/v4/c/a;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/punchbox/v4/c/r;)Lcom/punchbox/v4/c/q;

    return-void
.end method
