.class public Lcom/punchbox/v4/d/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/punchbox/ads/AdRequest;

.field private d:Lcom/punchbox/v4/d/i;

.field private e:Lcom/punchbox/listener/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/v4/d/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/punchbox/ads/AdRequest;Lcom/punchbox/v4/d/i;Lcom/punchbox/listener/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/punchbox/v4/d/x;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/punchbox/v4/d/x;->c:Lcom/punchbox/ads/AdRequest;

    iput-object p3, p0, Lcom/punchbox/v4/d/x;->d:Lcom/punchbox/v4/d/i;

    iput-object p4, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->d:Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/i;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/v4/d/x;->c:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {v1, v0}, Lcom/punchbox/ads/AdRequest;->setPlacementID(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/punchbox/v4/d/x;->c:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {v1}, Lcom/punchbox/ads/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/d/x;->c:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {v1}, Lcom/punchbox/ads/AdRequest;->getGetMethodUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/punchbox/v4/d/x;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/punchbox/v4/i/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/i/b;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/punchbox/v4/i/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/punchbox/v4/d/x;->a:Ljava/lang/String;

    const-string v1, "[[response]]: null"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    new-instance v1, Lcom/punchbox/exception/PBException;

    const/16 v2, 0x7d2

    const-string/jumbo v3, "return null"

    invoke-direct {v1, v2, v3}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/punchbox/listener/a;->a(Lcom/punchbox/exception/PBException;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->d:Lcom/punchbox/v4/d/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/i;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/punchbox/v4/d/x;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[response]]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/punchbox/response/b;

    invoke-direct {v1}, Lcom/punchbox/response/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/punchbox/response/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/punchbox/response/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    invoke-interface {v0, v1}, Lcom/punchbox/listener/a;->a(Lcom/punchbox/response/b;)V
    :try_end_0
    .catch Lcom/punchbox/exception/PBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/punchbox/exception/PBException;->printStackTrace()V

    iget-object v1, p0, Lcom/punchbox/v4/d/x;->d:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1, v5}, Lcom/punchbox/v4/d/i;->a(Z)V

    iget-object v1, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    invoke-interface {v1, v0}, Lcom/punchbox/listener/a;->a(Lcom/punchbox/exception/PBException;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->e:Lcom/punchbox/listener/a;

    new-instance v2, Lcom/punchbox/exception/PBException;

    invoke-virtual {v1}, Lcom/punchbox/response/b;->b()I

    move-result v1

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/punchbox/listener/a;->a(Lcom/punchbox/exception/PBException;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/x;->d:Lcom/punchbox/v4/d/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/i;->a(Z)V
    :try_end_1
    .catch Lcom/punchbox/exception/PBException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/punchbox/v4/d/x;->d:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1, v5}, Lcom/punchbox/v4/d/i;->a(Z)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
