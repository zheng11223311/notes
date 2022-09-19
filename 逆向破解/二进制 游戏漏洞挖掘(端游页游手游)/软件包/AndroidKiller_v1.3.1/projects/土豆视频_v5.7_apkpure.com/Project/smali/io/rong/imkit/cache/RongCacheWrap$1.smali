.class Lio/rong/imkit/cache/RongCacheWrap$1;
.super Lcom/sea_monster/common/PriorityRunnable;
.source "RongCacheWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/cache/RongCacheWrap;->executeCacheProvider(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/cache/RongCacheWrap;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/rong/imkit/cache/RongCacheWrap;ILjava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 49
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap$1;, "Lio/rong/imkit/cache/RongCacheWrap.1;"
    iput-object p1, p0, Lio/rong/imkit/cache/RongCacheWrap$1;->this$0:Lio/rong/imkit/cache/RongCacheWrap;

    iput-object p3, p0, Lio/rong/imkit/cache/RongCacheWrap$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/sea_monster/common/PriorityRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lio/rong/imkit/cache/RongCacheWrap$1;, "Lio/rong/imkit/cache/RongCacheWrap.1;"
    iget-object v0, p0, Lio/rong/imkit/cache/RongCacheWrap$1;->this$0:Lio/rong/imkit/cache/RongCacheWrap;

    iget-object v1, p0, Lio/rong/imkit/cache/RongCacheWrap$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/rong/imkit/cache/RongCacheWrap;->obtainValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
