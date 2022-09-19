.class public Lcom/punchbox/v4/b/d;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/lang/String;

.field protected static b:Lcom/punchbox/v4/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CocoData_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/punchbox/v4/b/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/b/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a()V
    .locals 2

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/b/d;->a:Ljava/lang/String;

    const-string v1, "CocoConfigManager not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    invoke-virtual {v0}, Lcom/punchbox/v4/b/e;->c()V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/b/d;->a:Ljava/lang/String;

    const-string v1, "CocoConfigManager not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    invoke-virtual {v0, p0}, Lcom/punchbox/v4/b/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Lcom/punchbox/v4/b/c;)V
    .locals 2

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/b/d;->a:Ljava/lang/String;

    const-string v1, "CocoConfigManager not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    invoke-virtual {v0, p0, p1}, Lcom/punchbox/v4/b/e;->a(Ljava/lang/String;Lcom/punchbox/v4/b/c;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/b/d;->a:Ljava/lang/String;

    const-string v1, "CocoConfigManager not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/punchbox/v4/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_1

    sget-object v0, Lcom/punchbox/v4/b/d;->a:Ljava/lang/String;

    const-string v1, "CocoConfigManager not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-static {p0}, Lcom/punchbox/v4/b/d;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    invoke-virtual {v0}, Lcom/punchbox/v4/b/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/punchbox/v4/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/b/d;->a:Ljava/lang/String;

    const-string v1, "CocoConfigManager not init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2

    :cond_0
    invoke-static {p0}, Lcom/punchbox/v4/b/d;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/b/d;->b:Lcom/punchbox/v4/b/e;

    invoke-virtual {v0}, Lcom/punchbox/v4/b/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/punchbox/v4/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
