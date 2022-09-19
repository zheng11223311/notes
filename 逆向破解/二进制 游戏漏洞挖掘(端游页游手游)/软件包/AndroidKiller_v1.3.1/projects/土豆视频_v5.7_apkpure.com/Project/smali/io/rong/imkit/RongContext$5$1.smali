.class Lio/rong/imkit/RongContext$5$1;
.super Ljava/lang/Object;
.source "RongContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongContext$5;->obtainValue(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/RongContext$5;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongContext$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lio/rong/imkit/RongContext$5$1;->this$1:Lio/rong/imkit/RongContext$5;

    iput-object p2, p0, Lio/rong/imkit/RongContext$5$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 488
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/RongContext$5$1;->val$key:Ljava/lang/String;

    new-instance v2, Lio/rong/imkit/RongContext$5$1$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/RongContext$5$1$1;-><init>(Lio/rong/imkit/RongContext$5$1;)V

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 510
    :cond_0
    return-void
.end method
