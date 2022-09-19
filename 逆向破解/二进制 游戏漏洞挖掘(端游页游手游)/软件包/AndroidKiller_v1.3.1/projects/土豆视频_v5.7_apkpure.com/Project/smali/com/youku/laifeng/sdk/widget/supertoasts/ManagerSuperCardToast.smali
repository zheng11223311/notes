.class Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;
.super Ljava/lang/Object;
.source "ManagerSuperCardToast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Manager SuperCardToast"

.field private static mManagerSuperCardToast:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;


# instance fields
.field private final mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mList:Ljava/util/LinkedList;

    .line 38
    return-void
.end method

.method protected static declared-synchronized getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mManagerSuperCardToast:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mManagerSuperCardToast:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit v1

    return-object v0

    .line 51
    :cond_0
    :try_start_1
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mManagerSuperCardToast:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    .line 53
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mManagerSuperCardToast:Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method add(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V
    .locals 1
    .param p1, "superCardToast"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method cancelAllSuperActivityToasts()V
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .line 84
    .local v0, "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 87
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getView()Landroid/view/View;

    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 95
    .end local v0    # "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 97
    return-void
.end method

.method getList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mList:Ljava/util/LinkedList;

    return-object v0
.end method

.method remove(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V
    .locals 1
    .param p1, "superCardToast"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method
