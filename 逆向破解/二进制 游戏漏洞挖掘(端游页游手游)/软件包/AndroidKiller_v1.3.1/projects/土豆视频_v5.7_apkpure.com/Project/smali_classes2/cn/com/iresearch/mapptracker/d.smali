.class final Lcn/com/iresearch/mapptracker/d;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcn/com/iresearch/mapptracker/IRMonitor;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/iresearch/mapptracker/IRMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/d;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    iput-object p2, p0, Lcn/com/iresearch/mapptracker/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/iresearch/mapptracker/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/dao/MATMessage;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcn/com/iresearch/mapptracker/dao/MATMessage;->flag:Z

    if-eqz v1, :cond_3

    const-string v1, "MAT_SESSION"

    const-string v2, "send---dayData---data success!"

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/d;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isFirstRun"

    iget-boolean v0, v0, Lcn/com/iresearch/mapptracker/dao/MATMessage;->flag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/d;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "daysend"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/d;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->k(Lcn/com/iresearch/mapptracker/IRMonitor;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v1, "MAT_SESSION"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send---dayData---data fail!: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/com/iresearch/mapptracker/dao/MATMessage;->msg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/iresearch/mapptracker/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method
