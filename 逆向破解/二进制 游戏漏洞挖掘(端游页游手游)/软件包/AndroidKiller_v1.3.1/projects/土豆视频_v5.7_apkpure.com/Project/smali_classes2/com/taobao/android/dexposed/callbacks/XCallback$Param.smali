.class public Lcom/taobao/android/dexposed/callbacks/XCallback$Param;
.super Ljava/lang/Object;
.source "XCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dexposed/callbacks/XCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;
    }
.end annotation


# instance fields
.field public final callbacks:[Ljava/lang/Object;

.field private extra:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet",
            "<+",
            "Lcom/taobao/android/dexposed/callbacks/XCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "callbacks":Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;, "Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet<+Lcom/taobao/android/dexposed/callbacks/XCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 46
    .local v0, "o":Ljava/io/Serializable;
    instance-of v1, v0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;

    if-eqz v1, :cond_0

    .line 47
    check-cast v0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;

    .end local v0    # "o":Ljava/io/Serializable;
    invoke-static {v0}, Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;->access$000(Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .restart local v0    # "o":Ljava/io/Serializable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;

    invoke-direct {v1, p2}, Lcom/taobao/android/dexposed/callbacks/XCallback$Param$SerializeWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 54
    return-void
.end method
