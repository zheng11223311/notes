.class final Lcn/com/iresearch/mapptracker/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/iresearch/mapptracker/IRMonitor;


# direct methods
.method constructor <init>(Lcn/com/iresearch/mapptracker/IRMonitor;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/a;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/a;->a:Lcn/com/iresearch/mapptracker/IRMonitor;

    invoke-static {v1}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;Lcn/com/iresearch/mapptracker/dao/b;)V

    return-void
.end method
