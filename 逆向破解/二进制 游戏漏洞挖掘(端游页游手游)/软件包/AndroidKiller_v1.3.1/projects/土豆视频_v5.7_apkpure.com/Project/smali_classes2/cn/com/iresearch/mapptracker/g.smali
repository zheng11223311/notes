.class final Lcn/com/iresearch/mapptracker/g;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLcn/com/iresearch/mapptracker/dao/EventInfo;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/iresearch/mapptracker/g;->a:Z

    iput-object p2, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    iput-object p3, p0, Lcn/com/iresearch/mapptracker/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcn/com/iresearch/mapptracker/g;->a:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->i(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v0

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v1

    invoke-static {v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/dao/b;->g()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->i(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;I)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "event_Count"

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->i(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Object;)V

    const-string v0, "MAT_EVENT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fdd\u5b58event_id= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7684\u4e8b\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MAT_EVENT"

    const-string v1, "Event\u8bb0\u5f55\u6570\u8fc7\u591a,\u5b58\u50a8\u5931\u8d25"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v1

    invoke-static {v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v1

    const-class v2, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event_id=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/g;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_2
    if-nez v0, :cond_4

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->i(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v0

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v1

    invoke-static {v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/dao/b;->g()I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->i(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;I)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "event_Count"

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->i(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v0, v1}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Object;)V

    const-string v0, "MAT_EVENT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65b0\u589e\u52a0event_id= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7684\u4e8b\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "MAT_EVENT"

    const-string v1, "Event\u8bb0\u5f55\u6570\u8fc7\u591a,\u5b58\u50a8\u5931\u8d25"

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getDuration()J

    move-result-wide v2

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getOpen_count()J

    move-result-wide v4

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v0

    const-class v1, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "event_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/com/iresearch/mapptracker/g;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getDuration()J

    move-result-wide v6

    add-long/2addr v2, v6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getOpen_count()J

    move-result-wide v0

    add-long/2addr v0, v4

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v4, v2, v3}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setDuration(J)V

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v2, v0, v1}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->setOpen_count(J)V

    :cond_5
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/g;->b:Lcn/com/iresearch/mapptracker/dao/EventInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event_id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/iresearch/mapptracker/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MAT_EVENT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u66f4\u65b0event_id= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/iresearch/mapptracker/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7684\u4e8b\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
