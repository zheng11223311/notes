.class public interface abstract Lcom/youku/local/IScanListener;
.super Ljava/lang/Object;
.source "IScanListener.java"


# virtual methods
.method public abstract onItemAdded(II)V
.end method

.method public abstract onScanStart()V
.end method

.method public abstract onScanStop(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/local/Media;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onThumbnailUpdate(Lcom/youku/local/Media;)V
.end method
