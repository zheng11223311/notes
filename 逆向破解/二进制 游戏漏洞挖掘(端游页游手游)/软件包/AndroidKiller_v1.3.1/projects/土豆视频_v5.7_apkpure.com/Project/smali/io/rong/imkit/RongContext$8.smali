.class Lio/rong/imkit/RongContext$8;
.super Lcom/sea_monster/common/PriorityRunnable;
.source "RongContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongContext;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongContext;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lio/rong/imkit/RongContext$8;->this$0:Lio/rong/imkit/RongContext;

    iput-object p2, p0, Lio/rong/imkit/RongContext$8;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sea_monster/common/PriorityRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lio/rong/imkit/RongContext$8;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 772
    return-void
.end method
