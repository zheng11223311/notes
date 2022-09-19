.class final Lcn/com/iresearch/mapptracker/f;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcn/com/iresearch/mapptracker/IRMonitor;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/iresearch/mapptracker/IRMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/f;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    iput-object p2, p0, Lcn/com/iresearch/mapptracker/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/iresearch/mapptracker/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/dao/MATMessage;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/f;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isFirstRun"

    iget-boolean v0, v1, Lcn/com/iresearch/mapptracker/dao/MATMessage;->flag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, " session "

    iget-boolean v2, v1, Lcn/com/iresearch/mapptracker/dao/MATMessage;->flag:Z

    if-eqz v2, :cond_2

    const-string v1, "MAT_SESSION"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data success!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "MAT_SESSION"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "data fail!: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcn/com/iresearch/mapptracker/dao/MATMessage;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/iresearch/mapptracker/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
