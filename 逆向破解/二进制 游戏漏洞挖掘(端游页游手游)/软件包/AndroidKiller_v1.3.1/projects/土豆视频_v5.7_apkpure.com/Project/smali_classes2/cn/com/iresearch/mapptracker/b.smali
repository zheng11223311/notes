.class final Lcn/com/iresearch/mapptracker/b;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcn/com/iresearch/mapptracker/IRMonitor;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/com/iresearch/mapptracker/IRMonitor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    iput-object p2, p0, Lcn/com/iresearch/mapptracker/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->c(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ConfigExpireTime"

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->c(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "Pd"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/b;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/iresearch/mapptracker/dao/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/com/iresearch/mapptracker/IRMonitor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;Lcn/com/iresearch/mapptracker/dao/b;)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->d(Lcn/com/iresearch/mapptracker/IRMonitor;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->d(Lcn/com/iresearch/mapptracker/IRMonitor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/b;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->d(Lcn/com/iresearch/mapptracker/IRMonitor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
