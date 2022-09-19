.class Lio/rong/imkit/widget/RCViewFlow$2;
.super Ljava/lang/Object;
.source "RCViewFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/RCViewFlow;->computeScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/RCViewFlow;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/RCViewFlow;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lio/rong/imkit/widget/RCViewFlow$2;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow$2;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow$2;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v1}, Lio/rong/imkit/widget/RCViewFlow;->access$200(Lio/rong/imkit/widget/RCViewFlow;)I

    move-result v1

    invoke-static {v0, v1}, Lio/rong/imkit/widget/RCViewFlow;->access$300(Lio/rong/imkit/widget/RCViewFlow;I)V

    .line 550
    return-void
.end method
