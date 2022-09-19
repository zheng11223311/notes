.class public Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;
.super Ljava/lang/Object;
.source "OrientationChangedNotify.java"


# static fields
.field private static _self:Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;


# instance fields
.field private _OrientationEventListener:Landroid/view/OrientationEventListener;

.field private _lastOrientation:I

.field private _observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    invoke-direct {v0}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;-><init>()V

    sput-object v0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_self:Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_observers:Ljava/util/ArrayList;

    return-void
.end method

.method public static Instances()Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_self:Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized AddObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;

    .prologue
    .line 50
    monitor-enter p0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_lastOrientation:I

    invoke-interface {p1, v0}, Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;->OnOrientationChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized FireOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/16 v5, 0x87

    const/16 v4, 0x2d

    .line 19
    monitor-enter p0

    const/16 v3, 0x13b

    if-gt p1, v3, :cond_0

    if-gt p1, v4, :cond_2

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    :try_start_0
    div-int/lit8 v3, p1, 0x5a

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v2, v3, 0x5a

    .line 37
    .local v2, "realOrientation":I
    const/16 v3, 0x168

    if-ne v2, v3, :cond_1

    .line 39
    const/4 v2, 0x0

    .line 41
    :cond_1
    iget v3, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_lastOrientation:I

    if-eq v3, v2, :cond_5

    .line 42
    iget-object v3, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_observers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;

    .line 43
    .local v1, "observer":Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;
    invoke-interface {v1, v2}, Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;->OnOrientationChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 19
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;
    .end local v2    # "realOrientation":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 23
    :cond_2
    if-le p1, v4, :cond_3

    if-gt p1, v5, :cond_3

    .line 25
    const/16 p1, 0x5a

    goto :goto_0

    .line 27
    :cond_3
    if-le p1, v5, :cond_4

    const/16 v3, 0xe1

    if-gt p1, v3, :cond_4

    .line 28
    const/16 p1, 0xb4

    goto :goto_0

    .line 32
    :cond_4
    const/16 p1, 0x10e

    goto :goto_0

    .line 46
    .restart local v2    # "realOrientation":I
    :cond_5
    :try_start_1
    iput v2, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_lastOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized RemoveObserver(Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/ultrapower/mcs/engine/video/IOrientationChangedObserver;

    .prologue
    .line 61
    monitor-enter p0

    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_OrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify$1;-><init>(Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_OrientationEventListener:Landroid/view/OrientationEventListener;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_OrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_OrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Stop()V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_OrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_OrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_observers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/OrientationChangedNotify;->_OrientationEventListener:Landroid/view/OrientationEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
