.class public interface abstract Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;
.super Ljava/lang/Object;
.source "DetailModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/DetailModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActorCorrelationGettedListener"
.end annotation


# virtual methods
.method public abstract onActorInfoGetted(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;Z)V"
        }
    .end annotation
.end method
