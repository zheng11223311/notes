.class final Lcn/com/iresearch/mapptracker/e;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Lcn/com/iresearch/mapptracker/dao/SessionInfo;


# direct methods
.method constructor <init>(Lcn/com/iresearch/mapptracker/dao/SessionInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/e;->a:Lcn/com/iresearch/mapptracker/dao/SessionInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/e;->a:Lcn/com/iresearch/mapptracker/dao/SessionInfo;

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Ljava/lang/Object;)V

    return-void
.end method
