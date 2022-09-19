.class abstract Lcom/sea_monster/cache/WeakReferenceRunnable;
.super Ljava/lang/Object;
.source "WeakReferenceRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mObjectRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/sea_monster/cache/WeakReferenceRunnable;, "Lcom/sea_monster/cache/WeakReferenceRunnable<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sea_monster/cache/WeakReferenceRunnable;->mObjectRef:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 30
    .local p0, "this":Lcom/sea_monster/cache/WeakReferenceRunnable;, "Lcom/sea_monster/cache/WeakReferenceRunnable<TT;>;"
    iget-object v1, p0, Lcom/sea_monster/cache/WeakReferenceRunnable;->mObjectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/sea_monster/cache/WeakReferenceRunnable;->run(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method

.method public abstract run(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
