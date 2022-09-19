.class public interface abstract Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICheckAttention"
.end annotation


# virtual methods
.method public abstract onFinishChannel(Lcom/youku/vo/SokuPodcast;)V
.end method

.method public abstract onFinishVideo(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation
.end method
